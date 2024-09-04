(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_destination = {
  id : string prop option; [@option]
  name : string prop;
  role_arn : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  target_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_log_destination) -> ()

let yojson_of_aws_cloudwatch_log_destination =
  (function
   | {
       id = v_id;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       target_arn = v_target_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_arn in
         ("target_arn", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
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
    : aws_cloudwatch_log_destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_log_destination

[@@@deriving.end]

let aws_cloudwatch_log_destination ?id ?tags ?tags_all ~name
    ~role_arn ~target_arn () : aws_cloudwatch_log_destination =
  { id; name; role_arn; tags; tags_all; target_arn }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  role_arn : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  target_arn : string prop;
}

let make ?id ?tags ?tags_all ~name ~role_arn ~target_arn __id =
  let __type = "aws_cloudwatch_log_destination" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_arn = Prop.computed __type __id "target_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_destination
        (aws_cloudwatch_log_destination ?id ?tags ?tags_all ~name
           ~role_arn ~target_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~role_arn
    ~target_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~role_arn ~target_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
