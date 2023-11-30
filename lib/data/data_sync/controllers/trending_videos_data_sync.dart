
import 'package:dartz/dartz.dart';
import 'package:qtec_player/data/communication/dioclient/dio_client.dart';
import 'package:qtec_player/data/data_sync/models/trending_video.dart';
import 'package:qtec_player/data/data_sync/models/trending_videos_data.dart';

import '../../communication/api_urls.dart';
import '../../communication/failure.dart';

typedef FailureOrVideosList = Either<Failure, TrendingVideosData>;
typedef JSON = Map<String, dynamic>;
typedef FailureOrJSON = Either<Failure, JSON>;
class TrendingVideoController {

      Future<FailureOrVideosList> getAllTrendingVideos(int page) async {
        final Future<FailureOrJSON> result =  TrendingVideoApi().get(
            ApiUrls.trendingEndPoint+"?page=$page"
        );
        return result.then((value) =>
          value.fold(
            (l) => Left(l),
            (r) => Right(TrendingVideosData.fromJson(r))
          )
        );

    }

}