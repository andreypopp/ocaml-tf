(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_server = {
  id : string prop option; [@option]
  server_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_server) -> ()

let yojson_of_aws_transfer_server =
  (function
   | { id = v_id; server_id = v_server_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_transfer_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_server

[@@@deriving.end]

let aws_transfer_server ?id ~server_id () : aws_transfer_server =
  { id; server_id }

type t = {
  tf_name : string;
  arn : string prop;
  certificate : string prop;
  domain : string prop;
  endpoint : string prop;
  endpoint_type : string prop;
  id : string prop;
  identity_provider_type : string prop;
  invocation_role : string prop;
  logging_role : string prop;
  protocols : string list prop;
  security_policy_name : string prop;
  server_id : string prop;
  structured_log_destinations : string list prop;
  url : string prop;
}

let make ?id ~server_id __id =
  let __type = "aws_transfer_server" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       certificate = Prop.computed __type __id "certificate";
       domain = Prop.computed __type __id "domain";
       endpoint = Prop.computed __type __id "endpoint";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       id = Prop.computed __type __id "id";
       identity_provider_type =
         Prop.computed __type __id "identity_provider_type";
       invocation_role = Prop.computed __type __id "invocation_role";
       logging_role = Prop.computed __type __id "logging_role";
       protocols = Prop.computed __type __id "protocols";
       security_policy_name =
         Prop.computed __type __id "security_policy_name";
       server_id = Prop.computed __type __id "server_id";
       structured_log_destinations =
         Prop.computed __type __id "structured_log_destinations";
       url = Prop.computed __type __id "url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_server
        (aws_transfer_server ?id ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~server_id __id =
  let (r : _ Tf_core.resource) = make ?id ~server_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
