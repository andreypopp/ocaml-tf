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

type meta_data = {
  created_at : string prop;
  last_modified_at : string prop;
  sub_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : meta_data) -> ()

let yojson_of_meta_data =
  (function
   | {
       created_at = v_created_at;
       last_modified_at = v_last_modified_at;
       sub_type = v_sub_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sub_type in
         ("sub_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_last_modified_at
         in
         ("last_modified_at", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_created_at in
         ("created_at", arg) :: bnds
       in
       `Assoc bnds
    : meta_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_meta_data

[@@@deriving.end]

type google_apigee_sharedflow = {
  config_bundle : string prop;
  detect_md5hash : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  org_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_apigee_sharedflow) -> ()

let yojson_of_google_apigee_sharedflow =
  (function
   | {
       config_bundle = v_config_bundle;
       detect_md5hash = v_detect_md5hash;
       id = v_id;
       name = v_name;
       org_id = v_org_id;
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
         let arg = yojson_of_prop yojson_of_string v_org_id in
         ("org_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_detect_md5hash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "detect_md5hash", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_config_bundle in
         ("config_bundle", arg) :: bnds
       in
       `Assoc bnds
    : google_apigee_sharedflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_apigee_sharedflow

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_apigee_sharedflow ?detect_md5hash ?id ?timeouts
    ~config_bundle ~name ~org_id () : google_apigee_sharedflow =
  { config_bundle; detect_md5hash; id; name; org_id; timeouts }

type t = {
  config_bundle : string prop;
  detect_md5hash : string prop;
  id : string prop;
  latest_revision_id : string prop;
  md5hash : string prop;
  meta_data : meta_data list prop;
  name : string prop;
  org_id : string prop;
  revision : string list prop;
}

let make ?detect_md5hash ?id ?timeouts ~config_bundle ~name ~org_id
    __id =
  let __type = "google_apigee_sharedflow" in
  let __attrs =
    ({
       config_bundle = Prop.computed __type __id "config_bundle";
       detect_md5hash = Prop.computed __type __id "detect_md5hash";
       id = Prop.computed __type __id "id";
       latest_revision_id =
         Prop.computed __type __id "latest_revision_id";
       md5hash = Prop.computed __type __id "md5hash";
       meta_data = Prop.computed __type __id "meta_data";
       name = Prop.computed __type __id "name";
       org_id = Prop.computed __type __id "org_id";
       revision = Prop.computed __type __id "revision";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_apigee_sharedflow
        (google_apigee_sharedflow ?detect_md5hash ?id ?timeouts
           ~config_bundle ~name ~org_id ());
    attrs = __attrs;
  }

let register ?tf_module ?detect_md5hash ?id ?timeouts ~config_bundle
    ~name ~org_id __id =
  let (r : _ Tf_core.resource) =
    make ?detect_md5hash ?id ?timeouts ~config_bundle ~name ~org_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
