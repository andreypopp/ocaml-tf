(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_directory_service_trust = {
  conditional_forwarder_ip_addrs : string prop list option; [@option]
  delete_associated_conditional_forwarder : bool prop option;
      [@option]
  directory_id : string prop;
  remote_domain_name : string prop;
  selective_auth : string prop option; [@option]
  trust_direction : string prop;
  trust_password : string prop;
  trust_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_trust) -> ()

let yojson_of_aws_directory_service_trust =
  (function
   | {
       conditional_forwarder_ip_addrs =
         v_conditional_forwarder_ip_addrs;
       delete_associated_conditional_forwarder =
         v_delete_associated_conditional_forwarder;
       directory_id = v_directory_id;
       remote_domain_name = v_remote_domain_name;
       selective_auth = v_selective_auth;
       trust_direction = v_trust_direction;
       trust_password = v_trust_password;
       trust_type = v_trust_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_trust_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "trust_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trust_password
         in
         ("trust_password", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_trust_direction
         in
         ("trust_direction", arg) :: bnds
       in
       let bnds =
         match v_selective_auth with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "selective_auth", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_domain_name
         in
         ("remote_domain_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       let bnds =
         match v_delete_associated_conditional_forwarder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "delete_associated_conditional_forwarder", arg
             in
             bnd :: bnds
       in
       let bnds =
         match v_conditional_forwarder_ip_addrs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "conditional_forwarder_ip_addrs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_directory_service_trust ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_trust

[@@@deriving.end]

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
