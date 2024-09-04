(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dms_replication_subnet_group = {
  id : string prop option; [@option]
  replication_subnet_group_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dms_replication_subnet_group) -> ()

let yojson_of_aws_dms_replication_subnet_group =
  (function
   | {
       id = v_id;
       replication_subnet_group_id = v_replication_subnet_group_id;
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
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

let aws_dms_replication_subnet_group ?id ?tags
    ~replication_subnet_group_id () :
    aws_dms_replication_subnet_group =
  { id; replication_subnet_group_id; tags }

type t = {
  tf_name : string;
  id : string prop;
  replication_subnet_group_arn : string prop;
  replication_subnet_group_description : string prop;
  replication_subnet_group_id : string prop;
  subnet_group_status : string prop;
  subnet_ids : string list prop;
  tags : string Tf_core.assoc prop;
  vpc_id : string prop;
}

let make ?id ?tags ~replication_subnet_group_id __id =
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
       subnet_group_status =
         Prop.computed __type __id "subnet_group_status";
       subnet_ids = Prop.computed __type __id "subnet_ids";
       tags = Prop.computed __type __id "tags";
       vpc_id = Prop.computed __type __id "vpc_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dms_replication_subnet_group
        (aws_dms_replication_subnet_group ?id ?tags
           ~replication_subnet_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~replication_subnet_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~replication_subnet_group_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
