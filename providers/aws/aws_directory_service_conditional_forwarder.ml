(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_directory_service_conditional_forwarder = {
  directory_id : string prop;  (** directory_id *)
  dns_ips : string prop list;  (** dns_ips *)
  id : string prop option; [@option]  (** id *)
  remote_domain_name : string prop;  (** remote_domain_name *)
}
[@@deriving yojson_of]
(** aws_directory_service_conditional_forwarder *)

let aws_directory_service_conditional_forwarder ?id ~directory_id
    ~dns_ips ~remote_domain_name () :
    aws_directory_service_conditional_forwarder =
  { directory_id; dns_ips; id; remote_domain_name }

type t = {
  directory_id : string prop;
  dns_ips : string list prop;
  id : string prop;
  remote_domain_name : string prop;
}

let make ?id ~directory_id ~dns_ips ~remote_domain_name __id =
  let __type = "aws_directory_service_conditional_forwarder" in
  let __attrs =
    ({
       directory_id = Prop.computed __type __id "directory_id";
       dns_ips = Prop.computed __type __id "dns_ips";
       id = Prop.computed __type __id "id";
       remote_domain_name =
         Prop.computed __type __id "remote_domain_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_conditional_forwarder
        (aws_directory_service_conditional_forwarder ?id
           ~directory_id ~dns_ips ~remote_domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~directory_id ~dns_ips
    ~remote_domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~directory_id ~dns_ips ~remote_domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
