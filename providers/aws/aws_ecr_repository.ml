(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_configuration = {
  encryption_type : string prop option; [@option]
  kms_key : string prop option; [@option]
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
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         match v_encryption_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_type", arg in
             bnd :: bnds
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

type aws_ecr_repository = {
  force_delete : bool prop option; [@option]
  id : string prop option; [@option]
  image_tag_mutability : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  encryption_configuration : encryption_configuration list;
  image_scanning_configuration : image_scanning_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_repository) -> ()

let yojson_of_aws_ecr_repository =
  (function
   | {
       force_delete = v_force_delete;
       id = v_id;
       image_tag_mutability = v_image_tag_mutability;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       encryption_configuration = v_encryption_configuration;
       image_scanning_configuration = v_image_scanning_configuration;
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
           yojson_of_list yojson_of_image_scanning_configuration
             v_image_scanning_configuration
         in
         ("image_scanning_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_encryption_configuration
             v_encryption_configuration
         in
         ("encryption_configuration", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_image_tag_mutability with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "image_tag_mutability", arg in
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
         match v_force_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ecr_repository -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_repository

[@@@deriving.end]

let encryption_configuration ?encryption_type ?kms_key () :
    encryption_configuration =
  { encryption_type; kms_key }

let image_scanning_configuration ~scan_on_push () :
    image_scanning_configuration =
  { scan_on_push }

let timeouts ?delete () : timeouts = { delete }

let aws_ecr_repository ?force_delete ?id ?image_tag_mutability ?tags
    ?tags_all ?timeouts ~name ~encryption_configuration
    ~image_scanning_configuration () : aws_ecr_repository =
  {
    force_delete;
    id;
    image_tag_mutability;
    name;
    tags;
    tags_all;
    encryption_configuration;
    image_scanning_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  force_delete : bool prop;
  id : string prop;
  image_tag_mutability : string prop;
  name : string prop;
  registry_id : string prop;
  repository_url : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?force_delete ?id ?image_tag_mutability ?tags ?tags_all
    ?timeouts ~name ~encryption_configuration
    ~image_scanning_configuration __id =
  let __type = "aws_ecr_repository" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       force_delete = Prop.computed __type __id "force_delete";
       id = Prop.computed __type __id "id";
       image_tag_mutability =
         Prop.computed __type __id "image_tag_mutability";
       name = Prop.computed __type __id "name";
       registry_id = Prop.computed __type __id "registry_id";
       repository_url = Prop.computed __type __id "repository_url";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_repository
        (aws_ecr_repository ?force_delete ?id ?image_tag_mutability
           ?tags ?tags_all ?timeouts ~name ~encryption_configuration
           ~image_scanning_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?force_delete ?id ?image_tag_mutability ?tags
    ?tags_all ?timeouts ~name ~encryption_configuration
    ~image_scanning_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?force_delete ?id ?image_tag_mutability ?tags ?tags_all
      ?timeouts ~name ~encryption_configuration
      ~image_scanning_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
