import com.sap.gateway.ip.core.customdev.util.Message;
import java.util.HashMap;
import groovy.json.JsonSlurper;
import groovy.json.JsonOutput;

def Message processData(Message message) {

    def header = message.getHeader("camelHttpQuery", java.lang.String);

    def map = header.split('&').inject([:]) {map, kv-> def (key, value) = kv.split('=').toList(); map[key] = value != null ? URLDecoder.decode(value) : null; map };

    def id = map.get("id")
    message.setProperty("id", id);

    def messageLog = messageLogFactory.getMessageLog(message);
    messageLog.addAttachmentAsString("Message Properties", "id: " + id, "text/plain");
	
    return message;

}