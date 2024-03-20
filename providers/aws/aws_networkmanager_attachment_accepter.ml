(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_networkmanager_attachment_accepter = {
  attachment_id : string prop;
  attachment_type : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_attachment_accepter) -> ()

let yojson_of_aws_networkmanager_attachment_accepter =
  (function
   | {
       attachment_id = v_attachment_id;
       attachment_type = v_attachment_type;
       id = v_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_attachment_type
         in
         ("attachment_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_attachment_id in
         ("attachment_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_attachment_accepter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_attachment_accepter

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let aws_networkmanager_attachment_accepter ?id ?timeouts
    ~attachment_id ~attachment_type () :
    aws_networkmanager_attachment_accepter =
  { attachment_id; attachment_type; id; timeouts }

type t = {
  attachment_id : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
}

let make ?id ?timeouts ~attachment_id ~attachment_type __id =
  let __type = "aws_networkmanager_attachment_accepter" in
  let __attrs =
    ({
       attachment_id = Prop.computed __type __id "attachment_id";
       attachment_policy_rule_number =
         Prop.computed __type __id "attachment_policy_rule_number";
       attachment_type = Prop.computed __type __id "attachment_type";
       core_network_arn =
         Prop.computed __type __id "core_network_arn";
       core_network_id = Prop.computed __type __id "core_network_id";
       edge_location = Prop.computed __type __id "edge_location";
       id = Prop.computed __type __id "id";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       resource_arn = Prop.computed __type __id "resource_arn";
       segment_name = Prop.computed __type __id "segment_name";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_attachment_accepter
        (aws_networkmanager_attachment_accepter ?id ?timeouts
           ~attachment_id ~attachment_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~attachment_id ~attachment_type
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~attachment_id ~attachment_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
