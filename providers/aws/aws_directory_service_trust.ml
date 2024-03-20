(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_directory_service_trust = {
  conditional_forwarder_ip_addrs : string prop list option; [@option]
      (** conditional_forwarder_ip_addrs *)
  delete_associated_conditional_forwarder : bool prop option;
      [@option]
      (** delete_associated_conditional_forwarder *)
  directory_id : string prop;  (** directory_id *)
  remote_domain_name : string prop;  (** remote_domain_name *)
  selective_auth : string prop option; [@option]
      (** selective_auth *)
  trust_direction : string prop;  (** trust_direction *)
  trust_password : string prop;  (** trust_password *)
  trust_type : string prop option; [@option]  (** trust_type *)
}
[@@deriving yojson_of]
(** aws_directory_service_trust *)

let aws_directory_service_trust ?conditional_forwarder_ip_addrs
    ?delete_associated_conditional_forwarder ?selective_auth
    ?trust_type ~directory_id ~remote_domain_name ~trust_direction
    ~trust_password () : aws_directory_service_trust =
  {
    conditional_forwarder_ip_addrs;
    delete_associated_conditional_forwarder;
    directory_id;
    remote_domain_name;
    selective_auth;
    trust_direction;
    trust_password;
    trust_type;
  }

type t = {
  conditional_forwarder_ip_addrs : string list prop;
  created_date_time : string prop;
  delete_associated_conditional_forwarder : bool prop;
  directory_id : string prop;
  id : string prop;
  last_updated_date_time : string prop;
  remote_domain_name : string prop;
  selective_auth : string prop;
  state_last_updated_date_time : string prop;
  trust_direction : string prop;
  trust_password : string prop;
  trust_state : string prop;
  trust_state_reason : string prop;
  trust_type : string prop;
}

let make ?conditional_forwarder_ip_addrs
    ?delete_associated_conditional_forwarder ?selective_auth
    ?trust_type ~directory_id ~remote_domain_name ~trust_direction
    ~trust_password __id =
  let __type = "aws_directory_service_trust" in
  let __attrs =
    ({
       conditional_forwarder_ip_addrs =
         Prop.computed __type __id "conditional_forwarder_ip_addrs";
       created_date_time =
         Prop.computed __type __id "created_date_time";
       delete_associated_conditional_forwarder =
         Prop.computed __type __id
           "delete_associated_conditional_forwarder";
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       last_updated_date_time =
         Prop.computed __type __id "last_updated_date_time";
       remote_domain_name =
         Prop.computed __type __id "remote_domain_name";
       selective_auth = Prop.computed __type __id "selective_auth";
       state_last_updated_date_time =
         Prop.computed __type __id "state_last_updated_date_time";
       trust_direction = Prop.computed __type __id "trust_direction";
       trust_password = Prop.computed __type __id "trust_password";
       trust_state = Prop.computed __type __id "trust_state";
       trust_state_reason =
         Prop.computed __type __id "trust_state_reason";
       trust_type = Prop.computed __type __id "trust_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_trust
        (aws_directory_service_trust ?conditional_forwarder_ip_addrs
           ?delete_associated_conditional_forwarder ?selective_auth
           ?trust_type ~directory_id ~remote_domain_name
           ~trust_direction ~trust_password ());
    attrs = __attrs;
  }

let register ?tf_module ?conditional_forwarder_ip_addrs
    ?delete_associated_conditional_forwarder ?selective_auth
    ?trust_type ~directory_id ~remote_domain_name ~trust_direction
    ~trust_password __id =
  let (r : _ Tf_core.resource) =
    make ?conditional_forwarder_ip_addrs
      ?delete_associated_conditional_forwarder ?selective_auth
      ?trust_type ~directory_id ~remote_domain_name ~trust_direction
      ~trust_password __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
