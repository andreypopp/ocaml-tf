(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type local_data__local_datas = {
  name : string prop;  (** For example, www.example.com. *)
  rrdatas : string prop list option; [@option]
      (** As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) *)
  ttl : float prop option; [@option]
      (** Number of seconds that this ResourceRecordSet can be cached by
resolvers. *)
  type_ : string prop; [@key "type"]
      (** One of valid DNS resource types. Possible values: [A, AAAA, CAA, CNAME, DNSKEY, DS, HTTPS, IPSECVPNKEY, MX, NAPTR, NS, PTR, SOA, SPF, SRV, SSHFP, SVCB, TLSA, TXT] *)
}
[@@deriving yojson_of]
(** All resource record sets for this selector, one per resource record type. The name must match the dns_name. *)

type local_data = { local_datas : local_data__local_datas list }
[@@deriving yojson_of]
(** Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_dns_response_policy_rule = {
  dns_name : string prop;
      (** The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  response_policy : string prop;
      (** Identifies the response policy addressed by this request. *)
  rule_name : string prop;
      (** An identifier for this rule. Must be unique with the ResponsePolicy. *)
  local_data : local_data list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_dns_response_policy_rule *)

let local_data__local_datas ?rrdatas ?ttl ~name ~type_ () :
    local_data__local_datas =
  { name; rrdatas; ttl; type_ }

let local_data ~local_datas () : local_data = { local_datas }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_dns_response_policy_rule ?id ?project ?timeouts ~dns_name
    ~response_policy ~rule_name ~local_data () :
    google_dns_response_policy_rule =
  {
    dns_name;
    id;
    project;
    response_policy;
    rule_name;
    local_data;
    timeouts;
  }

type t = {
  dns_name : string prop;
  id : string prop;
  project : string prop;
  response_policy : string prop;
  rule_name : string prop;
}

let make ?id ?project ?timeouts ~dns_name ~response_policy ~rule_name
    ~local_data __id =
  let __type = "google_dns_response_policy_rule" in
  let __attrs =
    ({
       dns_name = Prop.computed __type __id "dns_name";
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       response_policy = Prop.computed __type __id "response_policy";
       rule_name = Prop.computed __type __id "rule_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_response_policy_rule
        (google_dns_response_policy_rule ?id ?project ?timeouts
           ~dns_name ~response_policy ~rule_name ~local_data ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~dns_name
    ~response_policy ~rule_name ~local_data __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~dns_name ~response_policy ~rule_name
      ~local_data __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
