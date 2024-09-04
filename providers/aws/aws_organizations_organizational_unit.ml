(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type accounts = {
  arn : string prop;
  email : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : accounts) -> ()

let yojson_of_accounts =
  (function
   | { arn = v_arn; email = v_email; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : accounts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_accounts

[@@@deriving.end]

type aws_organizations_organizational_unit = {
  id : string prop option; [@option]
  name : string prop;
  parent_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_organizations_organizational_unit) -> ()

let yojson_of_aws_organizations_organizational_unit =
  (function
   | {
       id = v_id;
       name = v_name;
       parent_id = v_parent_id;
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
         let arg = yojson_of_prop yojson_of_string v_parent_id in
         ("parent_id", arg) :: bnds
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
    : aws_organizations_organizational_unit ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_organizations_organizational_unit

[@@@deriving.end]

let aws_organizations_organizational_unit ?id ?tags ?tags_all ~name
    ~parent_id () : aws_organizations_organizational_unit =
  { id; name; parent_id; tags; tags_all }

type t = {
  tf_name : string;
  accounts : accounts list prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  parent_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?id ?tags ?tags_all ~name ~parent_id __id =
  let __type = "aws_organizations_organizational_unit" in
  let __attrs =
    ({
       tf_name = __id;
       accounts = Prop.computed __type __id "accounts";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent_id = Prop.computed __type __id "parent_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_organizations_organizational_unit
        (aws_organizations_organizational_unit ?id ?tags ?tags_all
           ~name ~parent_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~parent_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~parent_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
