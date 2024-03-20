(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { update : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_networkmanager_core_network_policy_attachment = {
  core_network_id : string prop;
  id : string prop option; [@option]
  policy_document : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_networkmanager_core_network_policy_attachment) -> ()

let yojson_of_aws_networkmanager_core_network_policy_attachment =
  (function
   | {
       core_network_id = v_core_network_id;
       id = v_id;
       policy_document = v_policy_document;
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
         let arg =
           yojson_of_prop yojson_of_string v_policy_document
         in
         ("policy_document", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_core_network_id
         in
         ("core_network_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_core_network_policy_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_core_network_policy_attachment

[@@@deriving.end]

let timeouts ?update () : timeouts = { update }

let aws_networkmanager_core_network_policy_attachment ?id ?timeouts
    ~core_network_id ~policy_document () :
    aws_networkmanager_core_network_policy_attachment =
  { core_network_id; id; policy_document; timeouts }

type t = {
  core_network_id : string prop;
  id : string prop;
  policy_document : string prop;
  state : string prop;
}

let make ?id ?timeouts ~core_network_id ~policy_document __id =
  let __type = "aws_networkmanager_core_network_policy_attachment" in
  let __attrs =
    ({
       core_network_id = Prop.computed __type __id "core_network_id";
       id = Prop.computed __type __id "id";
       policy_document = Prop.computed __type __id "policy_document";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_core_network_policy_attachment
        (aws_networkmanager_core_network_policy_attachment ?id
           ?timeouts ~core_network_id ~policy_document ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~core_network_id
    ~policy_document __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~core_network_id ~policy_document __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
