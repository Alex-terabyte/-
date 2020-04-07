<%@ page import="java.util.*"%>
<%! HashMap adr = new HashMap(); %>
<% 	Thread.sleep (0);
	if (adr.size() == 0) {
		adr.put("8-111-456-78-90", "Kamenskaya, 56");
		adr.put("8-222-456-78-90", "Krasnyi pr., 10");
		adr.put("8-333-456-78-90", "Gogelya, 3");
		adr.put("8-905-980-49-61", "Semyi Shamshinyh, 37a");
		adr.put("8-913-939-58-15", "Zalesskogo, 2/3");
	}
	String phone = request.getParameter("phone");
	String address = request.getParameter("adress");
	String ord = request.getParameter("ord");
	if (phone != null && address == null) {
		if (adr.containsKey(phone)) {
			out.println(adr.get(phone));
		} else {
			out.println("New phone");
		}
	}
	if (phone != null && address != null) {
		adr.put(phone,address) ;
		out.println("Your order:<br>");
		out.println(phone + "<br>");
		out.println(address + "<br>");
		out.println(ord + "<br>");
	}

%>