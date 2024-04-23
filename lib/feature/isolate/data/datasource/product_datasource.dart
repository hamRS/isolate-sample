import 'package:fpdart/fpdart.dart';
import 'package:isolate_test/core/http_client/http_client.dart';
import 'package:isolate_test/core/http_client/http_exception.dart';
import 'package:isolate_test/feature/isolate/domain/entities/product_entity.dart';

abstract class ProductDatasource {
  Future<Either<HttpException, List<ProductEntity>>> getAllProducts();
}
