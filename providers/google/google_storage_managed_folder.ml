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

type google_storage_managed_folder = {
  bucket : string prop;
  id : string prop option; [@option]
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_managed_folder) -> ()

let yojson_of_google_storage_managed_folder =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       name = v_name;
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
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_managed_folder ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_managed_folder

[@@@deriving.end]

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_storage_managed_folder ?id ?timeouts ~bucket ~name () :
    google_storage_managed_folder =
  { bucket; id; name; timeouts }

type t = {
  tf_name : string;
  bucket : string prop;
  create_time : string prop;
  id : string prop;
  metageneration : string prop;
  name : string prop;
  self_link : string prop;
  update_time : string prop;
}

let make ?id ?timeouts ~bucket ~name __id =
  let __type = "google_storage_managed_folder" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       create_time = Prop.computed __type __id "create_time";
       id = Prop.computed __type __id "id";
       metageneration = Prop.computed __type __id "metageneration";
       name = Prop.computed __type __id "name";
       self_link = Prop.computed __type __id "self_link";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_managed_folder
        (google_storage_managed_folder ?id ?timeouts ~bucket ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~bucket ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~bucket ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
