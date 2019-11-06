import UIKit

enum Direction {
    case North
    case South
    case East, West
    
}

enum HTTPCode : Int {
    case OK = 200
    case NOT_MODIFY = 304
    case INCORRECT_PAGE = 404
    case SERVER_ERROR = 500
    
    var value : String {
        switch self {
        case .OK:
            return "응답이 성공했습니다. HTTP 코드는 \(self.rawValue)입니다"
        case .NOT_MODIFY :

            return "변경된 내역이 없습니다. HTTP 코드는 \(self.rawValue)입니다."
        case .INCORRECT_PAGE :
            return "존재하지 않는 페이지입니다. HTTP 코드는 \(self.rawValue)입니다."
        case .SERVER_ERROR :
            return "서버 오류입니다. HTTP 코드는 \(self.rawValue)입니다."
 
        }
    }
    
    static func getName() -> String {
        return "This Enumberation is HTTPCode"
    }
}

var response = HTTPCode.OK
response = .NOT_MODIFY

response.value

response.getDescription()

HTTPCode.getName()
