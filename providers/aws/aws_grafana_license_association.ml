(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type aws_grafana_license_association = {
  id : string prop option; [@option]
  license_type : string prop;
  workspace_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_grafana_license_association) -> ()

let yojson_of_aws_grafana_license_association =
  (function
   | {
       id = v_id;
       license_type = v_license_type;
       workspace_id = v_workspace_id;
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
         let arg = yojson_of_prop yojson_of_string v_workspace_id in
         ("workspace_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_license_type in
         ("license_type", arg) :: bnds
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
    : aws_grafana_license_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_grafana_license_association

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_grafana_license_association ?id ?timeouts ~license_type
    ~workspace_id () : aws_grafana_license_association =
  { id; license_type; workspace_id; timeouts }

type t = {
  free_trial_expiration : string prop;
  id : string prop;
  license_expiration : string prop;
  license_type : string prop;
  workspace_id : string prop;
}

let make ?id ?timeouts ~license_type ~workspace_id __id =
  let __type = "aws_grafana_license_association" in
  let __attrs =
    ({
       free_trial_expiration =
         Prop.computed __type __id "free_trial_expiration";
       id = Prop.computed __type __id "id";
       license_expiration =
         Prop.computed __type __id "license_expiration";
       license_type = Prop.computed __type __id "license_type";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_license_association
        (aws_grafana_license_association ?id ?timeouts ~license_type
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~license_type ~workspace_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~license_type ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
