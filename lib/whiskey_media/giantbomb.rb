module GiantBomb
  
  class GiantBombConnector

    class << self

      def find_by_id(id, options={})
        connector = WhiskeyMedia::Connector.new host, api_key, resource(id)
        connector.find_by_id options
      end

      def list(options={})
        connector = WhiskeyMedia::Connector.new host, api_key, resources
        connector.list options
      end
      
      private
      
      def resources
        if self == GiantBomb::Accessories
          "accessories"
        elsif self == GiantBomb::Characters
          "characters"
        elsif self == GiantBomb::Companies
          "companies"
        elsif self == GiantBomb::Concepts
          "concepts"
        elsif self == GiantBomb::Franchises
          "franchises"
        elsif self == GiantBomb::Games
          "games"
        elsif self == GiantBomb::GameRatings
          "game_ratings"
        elsif self == GiantBomb::Genres
          "genres"
        elsif self == GiantBomb::Locations
          "locations"
        elsif self == GiantBomb::Objects
          "objects"
        elsif self == GiantBomb::People
          "people"
        elsif self == GiantBomb::Platforms
          "platforms"
        elsif self == GiantBomb::Promos
          "promos"
        elsif self == GiantBomb::RatingBoards
          "rating_boards"
        elsif self == GiantBomb::Regions
          "regions"
        elsif self == GiantBomb::Releases
          "releases"
        elsif self == GiantBomb::Reviews
          "reviews"
        elsif self == GiantBomb::Themes
          "themes"
        elsif self == GiantBomb::Types
          "types"
        elsif self == GiantBomb::UserReviews
          "user_reviews"
        elsif self == GiantBomb::Videos
          "videos"
        end
      end
      
      def resource id
         if self == GiantBomb::Accessories
           "accessory/#{id}"
         elsif self == GiantBomb::Characters
           "character/#{id}"
         elsif self == GiantBomb::Companies
           "company/#{id}"
         elsif self == GiantBomb::Concepts
           "concept/#{id}"
         elsif self == GiantBomb::Franchises
           "franchise/#{id}"
         elsif self == GiantBomb::Games
           "game/#{id}"
         elsif self == GiantBomb::GameRatings
           "game_rating/#{id}"
         elsif self == GiantBomb::Genres
           "genre/#{id}"
         elsif self == GiantBomb::Locations
           "location/#{id}"
         elsif self == GiantBomb::Objects
           "object/#{id}"
         elsif self == GiantBomb::People
           "person/#{id}"
         elsif self == GiantBomb::Platforms
           "platform/#{id}"
         elsif self == GiantBomb::Promos
           "promo/#{id}"
         elsif self == GiantBomb::RatingBoards
           "rating_board/#{id}"
         elsif self == GiantBomb::Regions
           "region/#{id}"
         elsif self == GiantBomb::Releases
           "release/#{id}"
         elsif self == GiantBomb::Reviews
           "review/#{id}"
         elsif self == GiantBomb::Themes
           "theme/#{id}"
         elsif self == GiantBomb::Types
           "type/#{id}"
         elsif self == GiantBomb::UserReviews
           "user_review/#{id}"
         elsif self == GiantBomb::Videos
           "video/#{id}"
         end
      end
      
      def host
        "api.giantbomb.com"
      end
      
      def api_key
        WhiskeyMedia.configuration[:api_keys]['giantbomb']
      end

    end
    
  end
  
  class Accessories < GiantBombConnector; end
  class Characters < GiantBombConnector; end
  class Companies < GiantBombConnector; end
  class Concepts < GiantBombConnector; end
  class Franchises < GiantBombConnector; end
  class Games < GiantBombConnector; end
  class GameRatings < GiantBombConnector; end
  class Genres < GiantBombConnector; end
  class Locations < GiantBombConnector; end
  class Objects < GiantBombConnector; end
  class People < GiantBombConnector; end
  class Platforms < GiantBombConnector; end
  class Promos < GiantBombConnector; end
  class RatingBoards < GiantBombConnector; end
  class Regions < GiantBombConnector; end
  class Releases < GiantBombConnector; end
  class Reviews < GiantBombConnector; end
  class Search < GiantBombConnector; end
  class Themes < GiantBombConnector; end
  class Types < GiantBombConnector; end
  class UserReviews < GiantBombConnector; end
  class Videos < GiantBombConnector; end
  
end