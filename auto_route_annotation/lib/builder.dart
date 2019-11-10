import 'package:auto_route_annotation/src/route_collector.dart';
import 'package:auto_route_annotation/src/route_generator.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/route_builder_config.dart';

final List<RouteConfig> collectedRoutes = List<RouteConfig>();
Builder routeCollector(_) => LibraryBuilder(RouteCollector(collectedRoutes), generatedExtension: ".auto_route.dart");
Builder routeBuilder(_) => LibraryBuilder(RouteGenerator(collectedRoutes), generatedExtension: ".router.dart");