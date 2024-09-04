(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type storage_location = {
  bucket : string prop;
  key : string prop;
  object_version : string prop option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : storage_location) -> ()

let yojson_of_storage_location =
  (function
   | {
       bucket = v_bucket;
       key = v_key;
       object_version = v_object_version;
       role_arn = v_role_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_object_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       `Assoc bnds
    : storage_location -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_storage_location

[@@@deriving.end]

type aws_gamelift_build = {
  id : string prop option; [@option]
  name : string prop;
  operating_system : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  version : string prop option; [@option]
  storage_location : storage_location list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_gamelift_build) -> ()

let yojson_of_aws_gamelift_build =
  (function
   | {
       id = v_id;
       name = v_name;
       operating_system = v_operating_system;
       tags = v_tags;
       tags_all = v_tags_all;
       version = v_version;
       storage_location = v_storage_location;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_storage_location then bnds
         else
           let arg =
             (yojson_of_list yojson_of_storage_location)
               v_storage_location
           in
           let bnd = "storage_location", arg in
           bnd :: bnds
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_operating_system
         in
         ("operating_system", arg) :: bnds
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
    : aws_gamelift_build -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_gamelift_build

[@@@deriving.end]

let storage_location ?object_version ~bucket ~key ~role_arn () :
    storage_location =
  { bucket; key; object_version; role_arn }

let aws_gamelift_build ?id ?tags ?tags_all ?version ~name
    ~operating_system ~storage_location () : aws_gamelift_build =
  {
    id;
    name;
    operating_system;
    tags;
    tags_all;
    version;
    storage_location;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  operating_system : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  version : string prop;
}

let make ?id ?tags ?tags_all ?version ~name ~operating_system
    ~storage_location __id =
  let __type = "aws_gamelift_build" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       operating_system =
         Prop.computed __type __id "operating_system";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_gamelift_build
        (aws_gamelift_build ?id ?tags ?tags_all ?version ~name
           ~operating_system ~storage_location ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?version ~name
    ~operating_system ~storage_location __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?version ~name ~operating_system
      ~storage_location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
