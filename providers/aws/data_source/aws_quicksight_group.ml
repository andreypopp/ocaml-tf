(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_quicksight_group = {
  aws_account_id : string prop option; [@option]
  group_name : string prop;
  id : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_quicksight_group) -> ()

let yojson_of_aws_quicksight_group =
  (function
   | {
       aws_account_id = v_aws_account_id;
       group_name = v_group_name;
       id = v_id;
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_namespace with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "namespace", arg in
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
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         match v_aws_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "aws_account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_quicksight_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_quicksight_group

[@@@deriving.end]

let aws_quicksight_group ?aws_account_id ?id ?namespace ~group_name
    () : aws_quicksight_group =
  { aws_account_id; group_name; id; namespace }

type t = {
  tf_name : string;
  arn : string prop;
  aws_account_id : string prop;
  description : string prop;
  group_name : string prop;
  id : string prop;
  namespace : string prop;
  principal_id : string prop;
}

let make ?aws_account_id ?id ?namespace ~group_name __id =
  let __type = "aws_quicksight_group" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_account_id = Prop.computed __type __id "aws_account_id";
       description = Prop.computed __type __id "description";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       namespace = Prop.computed __type __id "namespace";
       principal_id = Prop.computed __type __id "principal_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_quicksight_group
        (aws_quicksight_group ?aws_account_id ?id ?namespace
           ~group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?aws_account_id ?id ?namespace ~group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?aws_account_id ?id ?namespace ~group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
