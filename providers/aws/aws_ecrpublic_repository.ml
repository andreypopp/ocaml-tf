(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type catalog_data = {
  about_text : string prop option; [@option]
  architectures : string prop list option; [@option]
  description : string prop option; [@option]
  logo_image_blob : string prop option; [@option]
  operating_systems : string prop list option; [@option]
  usage_text : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : catalog_data) -> ()

let yojson_of_catalog_data =
  (function
   | {
       about_text = v_about_text;
       architectures = v_architectures;
       description = v_description;
       logo_image_blob = v_logo_image_blob;
       operating_systems = v_operating_systems;
       usage_text = v_usage_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_usage_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "usage_text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_operating_systems with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "operating_systems", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo_image_blob with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo_image_blob", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_architectures with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "architectures", arg in
             bnd :: bnds
       in
       let bnds =
         match v_about_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "about_text", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : catalog_data -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_catalog_data

[@@@deriving.end]

type timeouts = { delete : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete } ->
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
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_ecrpublic_repository = {
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  repository_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  catalog_data : catalog_data list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecrpublic_repository) -> ()

let yojson_of_aws_ecrpublic_repository =
  (function
   | {
       force_destroy = v_force_destroy;
       id = v_id;
       repository_name = v_repository_name;
       tags = v_tags;
       tags_all = v_tags_all;
       catalog_data = v_catalog_data;
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
         if [] = v_catalog_data then bnds
         else
           let arg =
             (yojson_of_list yojson_of_catalog_data) v_catalog_data
           in
           let bnd = "catalog_data", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
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
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecrpublic_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecrpublic_repository

[@@@deriving.end]

let catalog_data ?about_text ?architectures ?description
    ?logo_image_blob ?operating_systems ?usage_text () : catalog_data
    =
  {
    about_text;
    architectures;
    description;
    logo_image_blob;
    operating_systems;
    usage_text;
  }

let timeouts ?delete () : timeouts = { delete }

let aws_ecrpublic_repository ?force_destroy ?id ?tags ?tags_all
    ?(catalog_data = []) ?timeouts ~repository_name () :
    aws_ecrpublic_repository =
  {
    force_destroy;
    id;
    repository_name;
    tags;
    tags_all;
    catalog_data;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  force_destroy : bool prop;
  id : string prop;
  registry_id : string prop;
  repository_name : string prop;
  repository_uri : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?force_destroy ?id ?tags ?tags_all ?(catalog_data = [])
    ?timeouts ~repository_name __id =
  let __type = "aws_ecrpublic_repository" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       registry_id = Prop.computed __type __id "registry_id";
       repository_name = Prop.computed __type __id "repository_name";
       repository_uri = Prop.computed __type __id "repository_uri";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecrpublic_repository
        (aws_ecrpublic_repository ?force_destroy ?id ?tags ?tags_all
           ~catalog_data ?timeouts ~repository_name ());
    attrs = __attrs;
  }

let register ?tf_module ?force_destroy ?id ?tags ?tags_all
    ?(catalog_data = []) ?timeouts ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?force_destroy ?id ?tags ?tags_all ~catalog_data ?timeouts
      ~repository_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
