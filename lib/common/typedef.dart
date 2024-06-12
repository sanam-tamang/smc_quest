
import 'package:dartz/dartz.dart';
import 'package:myapp/core/failure/failure.dart';



typedef FutureEither<Type> = Future<Either<Failure, Type>>;
