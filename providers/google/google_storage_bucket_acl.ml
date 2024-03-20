(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_bucket_acl = {
  bucket : string prop;
  default_acl : string prop option; [@option]
  id : string prop option; [@option]
  predefined_acl : string prop option; [@option]
  role_entity : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_bucket_acl) -> ()

let yojson_of_google_storage_bucket_acl =
  (function
   | {
       bucket = v_bucket;
       default_acl = v_default_acl;
       id = v_id;
       predefined_acl = v_predefined_acl;
       role_entity = v_role_entity;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_role_entity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "role_entity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_predefined_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "predefined_acl", arg in
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
         match v_default_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_acl", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : google_storage_bucket_acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_bucket_acl

[@@@deriving.end]

let google_storage_bucket_acl ?default_acl ?id ?predefined_acl
    ?role_entity ~bucket () : google_storage_bucket_acl =
  { bucket; default_acl; id; predefined_acl; role_entity }

type t = {
  bucket : string prop;
  default_acl : string prop;
  id : string prop;
  predefined_acl : string prop;
  role_entity : string list prop;
}

let make ?default_acl ?id ?predefined_acl ?role_entity ~bucket __id =
  let __type = "google_storage_bucket_acl" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       default_acl = Prop.computed __type __id "default_acl";
       id = Prop.computed __type __id "id";
       predefined_acl = Prop.computed __type __id "predefined_acl";
       role_entity = Prop.computed __type __id "role_entity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_bucket_acl
        (google_storage_bucket_acl ?default_acl ?id ?predefined_acl
           ?role_entity ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?default_acl ?id ?predefined_acl ?role_entity
    ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?default_acl ?id ?predefined_acl ?role_entity ~bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
