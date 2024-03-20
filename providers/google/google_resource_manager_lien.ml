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

type google_resource_manager_lien = {
  id : string prop option; [@option]
  origin : string prop;
  parent : string prop;
  reason : string prop;
  restrictions : string prop list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_resource_manager_lien) -> ()

let yojson_of_google_resource_manager_lien =
  (function
   | {
       id = v_id;
       origin = v_origin;
       parent = v_parent;
       reason = v_reason;
       restrictions = v_restrictions;
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_restrictions
         in
         ("restrictions", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_reason in
         ("reason", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin in
         ("origin", arg) :: bnds
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
    : google_resource_manager_lien ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_resource_manager_lien

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_resource_manager_lien ?id ?timeouts ~origin ~parent
    ~reason ~restrictions () : google_resource_manager_lien =
  { id; origin; parent; reason; restrictions; timeouts }

type t = {
  create_time : string prop;
  id : string prop;
  name : string prop;
  origin : string prop;
  parent : string prop;
  reason : string prop;
  restrictions : string list prop;
}

let make ?id ?timeouts ~origin ~parent ~reason ~restrictions __id =
  let __type = "google_resource_manager_lien" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       origin = Prop.computed __type __id "origin";
       parent = Prop.computed __type __id "parent";
       reason = Prop.computed __type __id "reason";
       restrictions = Prop.computed __type __id "restrictions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_resource_manager_lien
        (google_resource_manager_lien ?id ?timeouts ~origin ~parent
           ~reason ~restrictions ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~origin ~parent ~reason
    ~restrictions __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~origin ~parent ~reason ~restrictions __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
