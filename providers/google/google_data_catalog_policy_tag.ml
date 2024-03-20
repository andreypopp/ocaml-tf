(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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

type google_data_catalog_policy_tag = {
  description : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  parent_policy_tag : string prop option; [@option]
  taxonomy : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_data_catalog_policy_tag) -> ()

let yojson_of_google_data_catalog_policy_tag =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       parent_policy_tag = v_parent_policy_tag;
       taxonomy = v_taxonomy;
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
         let arg = yojson_of_prop yojson_of_string v_taxonomy in
         ("taxonomy", arg) :: bnds
       in
       let bnds =
         match v_parent_policy_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "parent_policy_tag", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_data_catalog_policy_tag ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_data_catalog_policy_tag

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_policy_tag ?description ?id
    ?parent_policy_tag ?timeouts ~display_name ~taxonomy () :
    google_data_catalog_policy_tag =
  {
    description;
    display_name;
    id;
    parent_policy_tag;
    taxonomy;
    timeouts;
  }

type t = {
  child_policy_tags : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent_policy_tag : string prop;
  taxonomy : string prop;
}

let make ?description ?id ?parent_policy_tag ?timeouts ~display_name
    ~taxonomy __id =
  let __type = "google_data_catalog_policy_tag" in
  let __attrs =
    ({
       child_policy_tags =
         Prop.computed __type __id "child_policy_tags";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent_policy_tag =
         Prop.computed __type __id "parent_policy_tag";
       taxonomy = Prop.computed __type __id "taxonomy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_policy_tag
        (google_data_catalog_policy_tag ?description ?id
           ?parent_policy_tag ?timeouts ~display_name ~taxonomy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?parent_policy_tag ?timeouts
    ~display_name ~taxonomy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?parent_policy_tag ?timeouts ~display_name
      ~taxonomy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
