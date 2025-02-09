import 'package:logger/logger.dart';


//* used to manage print statements in the app

class SetUpLogger {
  //private constructor
  SetUpLogger._();

  // The single instance of the class
  static final SetUpLogger _setUpLogger = SetUpLogger._();

  static SetUpLogger get instance => _setUpLogger;

  // A public factory constructor to provide access to the instance
  factory SetUpLogger() => _setUpLogger;

  Logger? _logger;
  Logger? get logger => _logger;

  void initLogger() {
    _logger ??= Logger(
      printer: PrettyPrinter(
        methodCount: 2, // Number of method calls to be displayed
        errorMethodCount: 5, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        // Should each log print contain a timestamp
        dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
      ),
    );
  }

  void printLog(message, {char,bool isCurrent = false}) {
    switch (char) {
      case 'd':
        _logger?.d(message,
            stackTrace:isCurrent? StackTrace.current: StackTrace.empty, error: "Debug code");
        break;
      case 'w':
        _logger?.w(message,  stackTrace:isCurrent? StackTrace.current: StackTrace.empty,error: "Warning");
        break;
      case 't':
        _logger?.t(message,  stackTrace:isCurrent? StackTrace.current: StackTrace.empty,error: "tracking code");
        break;
      case 'i':
        _logger?.i(message,  stackTrace:isCurrent? StackTrace.current: StackTrace.empty,error: "Info");
        break;
      case 'e':
        _logger?.e(message,  stackTrace:isCurrent? StackTrace.current: StackTrace.empty,error: "error");
        break;
      case 'f':
        _logger?.f(message,  stackTrace:isCurrent? StackTrace.current: StackTrace.empty,error: "fatal");
        break;
      default:
        _logger?.d(message,  stackTrace:isCurrent? StackTrace.current: StackTrace.empty,error: "Debug code");
        break;
    }
  }

  Logger log(Type type) => Logger(
        printer: CustomLogPrinter(
          className: type.toString(),
        ),
      );
}

class CustomLogPrinter extends LogPrinter {
  final String className;

  CustomLogPrinter({required this.className});

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.defaultLevelColors[event.level];
    final emoji = PrettyPrinter.defaultLevelEmojis[event.level];
    final message = event.level;
    final error = StackTrace.current;
    return [color!('$emoji: $className: $message \n $error')];
  }
}
