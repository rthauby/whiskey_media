module ComicVine
  
  class ComicVineConnector

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
        if self == ComicVine::Characters
          "characters"
        elsif self == ComicVine::Concepts
          "concepts"
        elsif self == ComicVine::Issues
          "issues"
        elsif self == ComicVine::Locations
          "locations"
        elsif self == ComicVine::Movies
          "movies"
        elsif self == ComicVine::Objects
          "objects"
        elsif self == ComicVine::Origins
          "origins"
        elsif self == ComicVine::Persons
          "persons"
        elsif self == ComicVine::Powers
          "powers"
        elsif self == ComicVine::Promos
          "promos"
        elsif self == ComicVine::Publishers
          "publishers"
        elsif self == ComicVine::Search
          "search"
        elsif self == ComicVine::StoryArcs
          "story_arcs"
        elsif self == ComicVine::Teams
          "teams"
        elsif self == ComicVine::Types
          "types"
        elsif self == ComicVine::Videos
          "videos"
        elsif self == ComicVine::Volumes
          "volumes"
        end
      end
      
      def resource id
         if self == ComicVine::Characters
           "character/#{id}"
         elsif self == ComicVine::Concepts
           "concept/#{id}"
         elsif self == ComicVine::Issues
           "issue/#{id}"
         elsif self == ComicVine::Locations
           "location/#{id}"
         elsif self == ComicVine::Movies
           "movie/#{id}"
         elsif self == ComicVine::Objects
           "object/#{id}"
         elsif self == ComicVine::Origins
           "origin/#{id}"
         elsif self == ComicVine::Persons
           "person/#{id}"
         elsif self == ComicVine::Powers
           "power/#{id}"
         elsif self == ComicVine::Promos
           "promo/#{id}"
         elsif self == ComicVine::Publishers
           "publisher/#{id}"
         elsif self == ComicVine::StoryArcs
           "story_arc/#{id}"
         elsif self == ComicVine::Teams
           "team/#{id}"
         elsif self == ComicVine::Types
           "type/#{id}"
         elsif self == ComicVine::Videos
           "video/#{id}"
         elsif self == ComicVine::Volumes
           "volume/#{id}"
         end
      end
      
      def host
        "api.comicvine.com"
      end
      
      def api_key
        WhiskeyMedia.configuration[:api_keys]['comicvine']
      end

    end
    
  end
  
  class Characters < ComicVineConnector; end
  class Concepts < ComicVineConnector; end
  class Issues < ComicVineConnector; end
  class Locations < ComicVineConnector; end
  class Movies < ComicVineConnector; end
  class Objects < ComicVineConnector; end
  class Origins < ComicVineConnector; end
  class Persons < ComicVineConnector; end
  class Powers < ComicVineConnector; end
  class Promos < ComicVineConnector; end
  class Publishers < ComicVineConnector; end
  class Search < ComicVineConnector; end
  class StoryArcs < ComicVineConnector; end
  class Teams < ComicVineConnector; end
  class Types < ComicVineConnector; end
  class Videos < ComicVineConnector; end
  class Volumes < ComicVineConnector; end
  
end