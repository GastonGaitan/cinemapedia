import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
        adult: moviedb.adult,
        backdropPath: (moviedb.backdropPath != '') 
        ? 'https://image.tmdb.org/t/p/w500${moviedb.backdropPath}'
        : 'data:image/png;base64,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',
        genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
        id: moviedb.id,
        originalLanguage: moviedb.originalLanguage,
        originalTitle: moviedb.originalTitle,
        overview: moviedb.overview,
        popularity: moviedb.popularity,
        posterPath: (moviedb.posterPath != '')
         ? 'https://image.tmdb.org/t/p/w500${moviedb.posterPath}'
         : 'no-poster',
        releaseDate: moviedb.releaseDate,
        title: moviedb.title,
        video: moviedb.video,
        voteAverage: moviedb.voteAverage,
        voteCount: moviedb.voteCount,
      );
}
