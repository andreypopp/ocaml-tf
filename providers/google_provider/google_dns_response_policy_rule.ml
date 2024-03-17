(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_dns_response_policy_rule__local_data__local_datas = {
  name : string;  (** For example, www.example.com. *)
  rrdatas : string list option; [@option]
      (** As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) *)
  ttl : float option; [@option]
      (** Number of seconds that this ResourceRecordSet can be cached by
resolvers. *)
  type_ : string; [@key "type"]
      (** One of valid DNS resource types. Possible values: [A, AAAA, CAA, CNAME, DNSKEY, DS, HTTPS, IPSECVPNKEY, MX, NAPTR, NS, PTR, SOA, SPF, SRV, SSHFP, SVCB, TLSA, TXT] *)
}
[@@deriving yojson_of]
(** All resource record sets for this selector, one per resource record type. The name must match the dns_name. *)

type google_dns_response_policy_rule__local_data = {
  local_datas :
    google_dns_response_policy_rule__local_data__local_datas list;
}
[@@deriving yojson_of]
(** Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name;
in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed. *)

type google_dns_response_policy_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dns_response_policy_rule__timeouts *)

type google_dns_response_policy_rule = {
  dns_name : string;
      (** The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule. *)
  response_policy : string;
      (** Identifies the response policy addressed by this request. *)
  rule_name : string;
      (** An identifier for this rule. Must be unique with the ResponsePolicy. *)
  local_data : google_dns_response_policy_rule__local_data list;
  timeouts : google_dns_response_policy_rule__timeouts option;
}
[@@deriving yojson_of]
(** google_dns_response_policy_rule *)

let google_dns_response_policy_rule ?timeouts ~dns_name
    ~response_policy ~rule_name ~local_data __resource_id =
  let __resource_type = "google_dns_response_policy_rule" in
  let __resource =
    { dns_name; response_policy; rule_name; local_data; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dns_response_policy_rule __resource);
  ()
