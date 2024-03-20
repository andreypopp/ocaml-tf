(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  encryption_type : string prop;
  kms_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | { encryption_type = v_encryption_type; kms_key = v_kms_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key in
         ("kms_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_type
         in
         ("encryption_type", arg) :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type image_scanning_configuration = { scan_on_push : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : image_scanning_configuration) -> ()

let yojson_of_image_scanning_configuration =
  (function
   | { scan_on_push = v_scan_on_push } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_scan_on_push in
         ("scan_on_push", arg) :: bnds
       in
       `Assoc bnds
    : image_scanning_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_scanning_configuration

[@@@deriving.end]

type aws_ecr_repository = {
  id : string prop option; [@option]
  name : string prop;
  registry_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_repository) -> ()

let yojson_of_aws_ecr_repository =
  (function
   | {
       id = v_id;
       name = v_name;
       registry_id = v_registry_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_registry_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry_id", arg in
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
    : aws_ecr_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_repository

[@@@deriving.end]

let aws_ecr_repository ?id ?registry_id ?tags ~name () :
    aws_ecr_repository =
  { id; name; registry_id; tags }

type t = {
  arn : string prop;
  encryption_configuration : encryption_configuration list prop;
  id : string prop;
  image_scanning_configuration :
    image_scanning_configuration list prop;
  image_tag_mutability : string prop;
  most_recent_image_tags : string list prop;
  name : string prop;
  registry_id : string prop;
  repository_url : string prop;
  tags : (string * string) list prop;
}

let make ?id ?registry_id ?tags ~name __id =
  let __type = "aws_ecr_repository" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       encryption_configuration =
         Prop.computed __type __id "encryption_configuration";
       id = Prop.computed __type __id "id";
       image_scanning_configuration =
         Prop.computed __type __id "image_scanning_configuration";
       image_tag_mutability =
         Prop.computed __type __id "image_tag_mutability";
       most_recent_image_tags =
         Prop.computed __type __id "most_recent_image_tags";
       name = Prop.computed __type __id "name";
       registry_id = Prop.computed __type __id "registry_id";
       repository_url = Prop.computed __type __id "repository_url";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_repository
        (aws_ecr_repository ?id ?registry_id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?registry_id ?tags ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?registry_id ?tags ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
