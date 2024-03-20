(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_activation = {
  description : string prop option; [@option]  (** description *)
  expiration_date : string prop option; [@option]
      (** expiration_date *)
  iam_role : string prop;  (** iam_role *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  registration_limit : float prop option; [@option]
      (** registration_limit *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_ssm_activation *)

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
