(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_service_account_key = {
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  public_key_type : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_account_key) -> ()

let yojson_of_google_service_account_key =
  (function
   | {
       id = v_id;
       name = v_name;
       project = v_project;
       public_key_type = v_public_key_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_public_key_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_key_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
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
       `Assoc bnds
    : google_service_account_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_account_key

[@@@deriving.end]

let google_service_account_key ?id ?project ?public_key_type ~name ()
    : google_service_account_key =
  { id; name; project; public_key_type }

type t = {
  id : string prop;
  key_algorithm : string prop;
  name : string prop;
  project : string prop;
  public_key : string prop;
  public_key_type : string prop;
}

let make ?id ?project ?public_key_type ~name __id =
  let __type = "google_service_account_key" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key_algorithm = Prop.computed __type __id "key_algorithm";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       public_key = Prop.computed __type __id "public_key";
       public_key_type = Prop.computed __type __id "public_key_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account_key
        (google_service_account_key ?id ?project ?public_key_type
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?public_key_type ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?public_key_type ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
