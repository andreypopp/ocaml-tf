(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
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

type aws_securityhub_configuration_policy_association = {
  id : string prop option; [@option]
  policy_id : string prop;
  target_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_securityhub_configuration_policy_association) -> ()

let yojson_of_aws_securityhub_configuration_policy_association =
  (function
   | {
       id = v_id;
       policy_id = v_policy_id;
       target_id = v_target_id;
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
         let arg = yojson_of_prop yojson_of_string v_target_id in
         ("target_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
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
    : aws_securityhub_configuration_policy_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securityhub_configuration_policy_association

[@@@deriving.end]

let timeouts ?create ?update () : timeouts = { create; update }

let aws_securityhub_configuration_policy_association ?id ?timeouts
    ~policy_id ~target_id () :
    aws_securityhub_configuration_policy_association =
  { id; policy_id; target_id; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  policy_id : string prop;
  target_id : string prop;
}

let make ?id ?timeouts ~policy_id ~target_id __id =
  let __type = "aws_securityhub_configuration_policy_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
       target_id = Prop.computed __type __id "target_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_configuration_policy_association
        (aws_securityhub_configuration_policy_association ?id
           ?timeouts ~policy_id ~target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~policy_id ~target_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~policy_id ~target_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
