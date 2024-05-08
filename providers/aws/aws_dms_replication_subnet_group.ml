(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_replication_subnet_group = {
  id : string prop option; [@option]
  replication_subnet_group_description : string prop;
  replication_subnet_group_id : string prop;
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_replication_subnet_group) -> ()

let yojson_of_aws_dms_replication_subnet_group =
  (function
   | {
       id = v_id;
       replication_subnet_group_description =
         v_replication_subnet_group_description;
       replication_subnet_group_id = v_replication_subnet_group_id;
       subnet_ids = v_subnet_ids;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         if [] = v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_replication_subnet_group_id
         in
         ("replication_subnet_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_replication_subnet_group_description
         in
         ("replication_subnet_group_description", arg) :: bnds
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
    : aws_dms_replication_subnet_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dms_replication_subnet_group

[@@@deriving.end]

let aws_dms_replication_subnet_group ?id ?tags ?tags_all
    ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids () :
    aws_dms_replication_subnet_group =
  {
    id;
    replication_subnet_group_description;
    replication_subnet_group_id;
    subnet_ids;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  id : string prop;
  replication_subnet_group_arn : string prop;
  replication_subnet_group_description : string prop;
  replication_subnet_group_id : string prop;
  subnet_ids : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc_id : string prop;
}

let make ?id ?tags ?tags_all ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids __id =
  let __type = "aws_dms_replication_subnet_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       replication_subnet_group_arn =
         Prop.computed __type __id "replication_subnet_group_arn";
       replication_subnet_group_description =
         Prop.computed __type __id
           "replication_subnet_group_description";
       replication_subnet_group_id =
         Prop.computed __type __id "replication_subnet_group_id";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_replication_subnet_group
        (aws_dms_replication_subnet_group ?id ?tags ?tags_all
           ~replication_subnet_group_description
           ~replication_subnet_group_id ~subnet_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~replication_subnet_group_description
    ~replication_subnet_group_id ~subnet_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~replication_subnet_group_description
      ~replication_subnet_group_id ~subnet_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
