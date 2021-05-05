package common;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class API_Testing {
	public static void main(String[] args) {
		createJSONObject();
		createJSONObjectArray();
		parseJSONObject();
	}

	private static void parseJSONObject() {
		
//		{
//		       "pageInfo": {
//		             "pageName": "abc",
//		             "pagePic": "http://example.com/content.jpg"
//		        },
//		        "posts": [
//		             {
//		                  "post_id": "123456789012_123456789012",
//		                  "actor_id": "1234567890",
//		                  "picOfPersonWhoPosted": "http://example.com/photo.jpg",
//		                  "nameOfPersonWhoPosted": "Jane Doe",
//		                  "message": "Sounds cool. Can't wait to see it!",
//		                  "likesCount": "2",
//		                  "comments": [],
//		                  "timeOfPost": "1234567890"
//		             }
//		        ]
//		}
		
		
		String jsonString = "{\"pageInfo\":{\"pageName\":\"abc\",\"pagePic\":\"http://example.com/content.jpg\"},\"posts\":[{\"post_id\":\"123456789012_123456789012\",\"actor_id\":\"1234567890\",\"picOfPersonWhoPosted\":\"http://example.com/photo.jpg\",\"nameOfPersonWhoPosted\":\"Jane Doe\",\"message\":\"Sounds cool. Can't wait to see it!\",\"likesCount\":\"2\",\"comments\":[],\"timeOfPost\":\"1234567890\"}]}";
						
		JSONParser parser = new JSONParser();
		try {
			Object obj = parser.parse(jsonString);
			JSONObject jsonObjLevel1 = (JSONObject)obj;
			
			JSONObject jsonObjLevel2 = (JSONObject) jsonObjLevel1.get("pageInfo");
			
			System.out.println(jsonObjLevel2.get("pageName"));
			System.out.println(jsonObjLevel2.get("pagePic"));
			
			JSONArray jsonObjLevel2Array = (JSONArray) jsonObjLevel1.get("posts");
			System.out.println(jsonObjLevel2Array);
			
			JSONObject jsonObjLevel2Array1Item = (JSONObject)jsonObjLevel2Array.get(0);
			System.out.println(jsonObjLevel2Array1Item);
			System.out.println(jsonObjLevel2Array1Item.get("picOfPersonWhoPosted"));
						
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	private static void createJSONObject() {
		String message;
		JSONObject json = new JSONObject();

		json.put("test1", "value1");

		JSONObject jsonObj = new JSONObject();

		jsonObj.put("id", 0);
		jsonObj.put("name", "testName");
		json.put("test2", jsonObj);

		message = json.toString();
		System.out.println(message);
	}
	
	private static void createJSONObjectArray() {
		ArrayList<JSONObject> JSONArr = new ArrayList<JSONObject>();
		JSONObject json = new JSONObject();
		json.put("test1", "value1");
		JSONArr.add(json);
		
		json = new JSONObject();
		json.put("test2", "value2");
		JSONArr.add(json);
		
		System.out.println(JSONArr);
		
	}
}
