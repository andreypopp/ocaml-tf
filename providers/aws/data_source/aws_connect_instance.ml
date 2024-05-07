(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_instance = {
  id : string prop option; [@option]
  instance_alias : string prop option; [@option]
  instance_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_instance) -> ()

let yojson_of_aws_connect_instance =
  (function
   | {
       id = v_id;
       instance_alias = v_instance_alias;
       instance_id = v_instance_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_instance_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "instance_alias", arg in
             bnd :: bnds
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
    : aws_connect_instance -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_instance

[@@@deriving.end]

let aws_connect_instance ?id ?instance_alias ?instance_id () :
    aws_connect_instance =
  { id; instance_alias; instance_id }

type t = {
  tf_name : string;
  arn : string prop;
  auto_resolve_best_voices_enabled : bool prop;
  contact_flow_logs_enabled : bool prop;
  contact_lens_enabled : bool prop;
  created_time : string prop;
  early_media_enabled : bool prop;
  id : string prop;
  identity_management_type : string prop;
  inbound_calls_enabled : bool prop;
  instance_alias : string prop;
  instance_id : string prop;
  multi_party_conference_enabled : bool prop;
  outbound_calls_enabled : bool prop;
  service_role : string prop;
  status : string prop;
}

let make ?id ?instance_alias ?instance_id __id =
  let __type = "aws_connect_instance" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       auto_resolve_best_voices_enabled =
         Prop.computed __type __id "auto_resolve_best_voices_enabled";
       contact_flow_logs_enabled =
         Prop.computed __type __id "contact_flow_logs_enabled";
       contact_lens_enabled =
         Prop.computed __type __id "contact_lens_enabled";
       created_time = Prop.computed __type __id "created_time";
       early_media_enabled =
         Prop.computed __type __id "early_media_enabled";
       id = Prop.computed __type __id "id";
       identity_management_type =
         Prop.computed __type __id "identity_management_type";
       inbound_calls_enabled =
         Prop.computed __type __id "inbound_calls_enabled";
       instance_alias = Prop.computed __type __id "instance_alias";
       instance_id = Prop.computed __type __id "instance_id";
       multi_party_conference_enabled =
         Prop.computed __type __id "multi_party_conference_enabled";
       outbound_calls_enabled =
         Prop.computed __type __id "outbound_calls_enabled";
       service_role = Prop.computed __type __id "service_role";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_instance
        (aws_connect_instance ?id ?instance_alias ?instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance_alias ?instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance_alias ?instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
