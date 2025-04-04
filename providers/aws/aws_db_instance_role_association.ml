(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_db_instance_role_association = {
  db_instance_identifier : string prop;
  feature_name : string prop;
  id : string prop option; [@option]
  role_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_db_instance_role_association) -> ()

let yojson_of_aws_db_instance_role_association =
  (function
   | {
       db_instance_identifier = v_db_instance_identifier;
       feature_name = v_feature_name;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_feature_name in
         ("feature_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_db_instance_identifier
         in
         ("db_instance_identifier", arg) :: bnds
       in
       `Assoc bnds
    : aws_db_instance_role_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_db_instance_role_association

[@@@deriving.end]

let aws_db_instance_role_association ?id ~db_instance_identifier
    ~feature_name ~role_arn () : aws_db_instance_role_association =
  { db_instance_identifier; feature_name; id; role_arn }

type t = {
  tf_name : string;
  db_instance_identifier : string prop;
  feature_name : string prop;
  id : string prop;
  role_arn : string prop;
}

let make ?id ~db_instance_identifier ~feature_name ~role_arn __id =
  let __type = "aws_db_instance_role_association" in
  let __attrs =
    ({
       tf_name = __id;
       db_instance_identifier =
         Prop.computed __type __id "db_instance_identifier";
       feature_name = Prop.computed __type __id "feature_name";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_db_instance_role_association
        (aws_db_instance_role_association ?id ~db_instance_identifier
           ~feature_name ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~db_instance_identifier ~feature_name
    ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~db_instance_identifier ~feature_name ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
