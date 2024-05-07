(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_directory_service_conditional_forwarder = {
  directory_id : string prop;
  dns_ips : string prop list;
  id : string prop option; [@option]
  remote_domain_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_conditional_forwarder) -> ()

let yojson_of_aws_directory_service_conditional_forwarder =
  (function
   | {
       directory_id = v_directory_id;
       dns_ips = v_dns_ips;
       id = v_id;
       remote_domain_name = v_remote_domain_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_remote_domain_name
         in
         ("remote_domain_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_dns_ips
         in
         ("dns_ips", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_directory_service_conditional_forwarder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_conditional_forwarder

[@@@deriving.end]

let aws_directory_service_conditional_forwarder ?id ~directory_id
    ~dns_ips ~remote_domain_name () :
    aws_directory_service_conditional_forwarder =
  { directory_id; dns_ips; id; remote_domain_name }

type t = {
  tf_name : string;
  directory_id : string prop;
  dns_ips : string list prop;
  id : string prop;
  remote_domain_name : string prop;
}

let make ?id ~directory_id ~dns_ips ~remote_domain_name __id =
  let __type = "aws_directory_service_conditional_forwarder" in
  let __attrs =
    ({
       tf_name = __id;
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
