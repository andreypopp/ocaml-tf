(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_activation = {
  description : string prop option; [@option]
  expiration_date : string prop option; [@option]
  iam_role : string prop;
  id : string prop option; [@option]
  name : string prop option; [@option]
  registration_limit : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssm_activation) -> ()

let yojson_of_aws_ssm_activation =
  (function
   | {
       description = v_description;
       expiration_date = v_expiration_date;
       iam_role = v_iam_role;
       id = v_id;
       name = v_name;
       registration_limit = v_registration_limit;
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
         match v_registration_limit with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "registration_limit", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
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
         let arg = yojson_of_prop yojson_of_string v_iam_role in
         ("iam_role", arg) :: bnds
       in
       let bnds =
         match v_expiration_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expiration_date", arg in
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
       `Assoc bnds
    : aws_ssm_activation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssm_activation

[@@@deriving.end]

let aws_ssm_activation ?description ?expiration_date ?id ?name
    ?registration_limit ?tags ?tags_all ~iam_role () :
    aws_ssm_activation =
  {
    description;
    expiration_date;
    iam_role;
    id;
    name;
    registration_limit;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  activation_code : string prop;
  description : string prop;
  expiration_date : string prop;
  expired : bool prop;
  iam_role : string prop;
  id : string prop;
  name : string prop;
  registration_count : float prop;
  registration_limit : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?expiration_date ?id ?name ?registration_limit
    ?tags ?tags_all ~iam_role __id =
  let __type = "aws_ssm_activation" in
  let __attrs =
    ({
       tf_name = __id;
       activation_code = Prop.computed __type __id "activation_code";
       description = Prop.computed __type __id "description";
       expiration_date = Prop.computed __type __id "expiration_date";
       expired = Prop.computed __type __id "expired";
       iam_role = Prop.computed __type __id "iam_role";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       registration_count =
         Prop.computed __type __id "registration_count";
       registration_limit =
         Prop.computed __type __id "registration_limit";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_activation
        (aws_ssm_activation ?description ?expiration_date ?id ?name
           ?registration_limit ?tags ?tags_all ~iam_role ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?expiration_date ?id ?name
    ?registration_limit ?tags ?tags_all ~iam_role __id =
  let (r : _ Tf_core.resource) =
    make ?description ?expiration_date ?id ?name ?registration_limit
      ?tags ?tags_all ~iam_role __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
