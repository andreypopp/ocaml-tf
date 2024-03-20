(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_secretsmanager_random_password = {
  exclude_characters : string prop option; [@option]
  exclude_lowercase : bool prop option; [@option]
  exclude_numbers : bool prop option; [@option]
  exclude_punctuation : bool prop option; [@option]
  exclude_uppercase : bool prop option; [@option]
  id : string prop option; [@option]
  include_space : bool prop option; [@option]
  password_length : float prop option; [@option]
  require_each_included_type : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_secretsmanager_random_password) -> ()

let yojson_of_aws_secretsmanager_random_password =
  (function
   | {
       exclude_characters = v_exclude_characters;
       exclude_lowercase = v_exclude_lowercase;
       exclude_numbers = v_exclude_numbers;
       exclude_punctuation = v_exclude_punctuation;
       exclude_uppercase = v_exclude_uppercase;
       id = v_id;
       include_space = v_include_space;
       password_length = v_password_length;
       require_each_included_type = v_require_each_included_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_require_each_included_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "require_each_included_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_length with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "password_length", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_space with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_space", arg in
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
         match v_exclude_uppercase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_uppercase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_punctuation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_punctuation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_numbers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_lowercase with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "exclude_lowercase", arg in
             bnd :: bnds
       in
       let bnds =
         match v_exclude_characters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "exclude_characters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_secretsmanager_random_password ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_secretsmanager_random_password

[@@@deriving.end]

let aws_secretsmanager_random_password ?exclude_characters
    ?exclude_lowercase ?exclude_numbers ?exclude_punctuation
    ?exclude_uppercase ?id ?include_space ?password_length
    ?require_each_included_type () :
    aws_secretsmanager_random_password =
  {
    exclude_characters;
    exclude_lowercase;
    exclude_numbers;
    exclude_punctuation;
    exclude_uppercase;
    id;
    include_space;
    password_length;
    require_each_included_type;
  }

type t = {
  exclude_characters : string prop;
  exclude_lowercase : bool prop;
  exclude_numbers : bool prop;
  exclude_punctuation : bool prop;
  exclude_uppercase : bool prop;
  id : string prop;
  include_space : bool prop;
  password_length : float prop;
  random_password : string prop;
  require_each_included_type : bool prop;
}

let make ?exclude_characters ?exclude_lowercase ?exclude_numbers
    ?exclude_punctuation ?exclude_uppercase ?id ?include_space
    ?password_length ?require_each_included_type __id =
  let __type = "aws_secretsmanager_random_password" in
  let __attrs =
    ({
       exclude_characters =
         Prop.computed __type __id "exclude_characters";
       exclude_lowercase =
         Prop.computed __type __id "exclude_lowercase";
       exclude_numbers = Prop.computed __type __id "exclude_numbers";
       exclude_punctuation =
         Prop.computed __type __id "exclude_punctuation";
       exclude_uppercase =
         Prop.computed __type __id "exclude_uppercase";
       id = Prop.computed __type __id "id";
       include_space = Prop.computed __type __id "include_space";
       password_length = Prop.computed __type __id "password_length";
       random_password = Prop.computed __type __id "random_password";
       require_each_included_type =
         Prop.computed __type __id "require_each_included_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_random_password
        (aws_secretsmanager_random_password ?exclude_characters
           ?exclude_lowercase ?exclude_numbers ?exclude_punctuation
           ?exclude_uppercase ?id ?include_space ?password_length
           ?require_each_included_type ());
    attrs = __attrs;
  }

let register ?tf_module ?exclude_characters ?exclude_lowercase
    ?exclude_numbers ?exclude_punctuation ?exclude_uppercase ?id
    ?include_space ?password_length ?require_each_included_type __id
    =
  let (r : _ Tf_core.resource) =
    make ?exclude_characters ?exclude_lowercase ?exclude_numbers
      ?exclude_punctuation ?exclude_uppercase ?id ?include_space
      ?password_length ?require_each_included_type __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
