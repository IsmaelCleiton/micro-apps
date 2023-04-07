class ExpressionEntity {
  final List<double> numbers;
  final List<String> operators;

  const ExpressionEntity({
    required this.numbers,
    required this.operators,
  });

  ExpressionEntity copyWith({
    List<double>? numbers,
    List<String>? operators,
  }) {
    return ExpressionEntity(
      numbers: numbers ?? this.numbers,
      operators: operators ?? this.operators,
    );
  }
}
