(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_storage_object_acl = {
  bucket : string prop;
  id : string prop option; [@option]
  object_ : string prop; [@key "object"]
  predefined_acl : string prop option; [@option]
  role_entity : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_storage_object_acl) -> ()

let yojson_of_google_storage_object_acl =
  (function
   | {
       bucket = v_bucket;
       id = v_id;
       object_ = v_object_;
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
         let arg = yojson_of_prop yojson_of_string v_object_ in
         ("object", arg) :: bnds
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
    : google_storage_object_acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_storage_object_acl

[@@@deriving.end]

let google_storage_object_acl ?id ?predefined_acl ?role_entity
    ~bucket ~object_ () : google_storage_object_acl =
  { bucket; id; object_; predefined_acl; role_entity }

type t = {
  tf_name : string;
  bucket : string prop;
  id : string prop;
  object_ : string prop;
  predefined_acl : string prop;
  role_entity : string list prop;
}

let make ?id ?predefined_acl ?role_entity ~bucket ~object_ __id =
  let __type = "google_storage_object_acl" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       object_ = Prop.computed __type __id "object";
       predefined_acl = Prop.computed __type __id "predefined_acl";
       role_entity = Prop.computed __type __id "role_entity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_storage_object_acl
        (google_storage_object_acl ?id ?predefined_acl ?role_entity
           ~bucket ~object_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?predefined_acl ?role_entity ~bucket
    ~object_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?predefined_acl ?role_entity ~bucket ~object_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
