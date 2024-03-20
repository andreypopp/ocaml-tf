(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_registry_image = {
  digest : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  project : string prop option; [@option]
  region : string prop option; [@option]
  tag : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_registry_image) -> ()

let yojson_of_google_container_registry_image =
  (function
   | {
       digest = v_digest;
       id = v_id;
       name = v_name;
       project = v_project;
       region = v_region;
       tag = v_tag;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
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
       let bnds =
         match v_digest with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "digest", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_container_registry_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_registry_image

[@@@deriving.end]

let google_container_registry_image ?digest ?id ?project ?region ?tag
    ~name () : google_container_registry_image =
  { digest; id; name; project; region; tag }

type t = {
  digest : string prop;
  id : string prop;
  image_url : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  tag : string prop;
}

let make ?digest ?id ?project ?region ?tag ~name __id =
  let __type = "google_container_registry_image" in
  let __attrs =
    ({
       digest = Prop.computed __type __id "digest";
       id = Prop.computed __type __id "id";
       image_url = Prop.computed __type __id "image_url";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       tag = Prop.computed __type __id "tag";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_registry_image
        (google_container_registry_image ?digest ?id ?project ?region
           ?tag ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?digest ?id ?project ?region ?tag ~name __id
    =
  let (r : _ Tf_core.resource) =
    make ?digest ?id ?project ?region ?tag ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
