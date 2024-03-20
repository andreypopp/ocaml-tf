(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_emr_studio_session_mapping = {
  id : string prop option; [@option]  (** id *)
  identity_id : string prop option; [@option]  (** identity_id *)
  identity_name : string prop option; [@option]  (** identity_name *)
  identity_type : string prop;  (** identity_type *)
  session_policy_arn : string prop;  (** session_policy_arn *)
  studio_id : string prop;  (** studio_id *)
}
[@@deriving yojson_of]
(** aws_emr_studio_session_mapping *)

let aws_emr_studio_session_mapping ?id ?identity_id ?identity_name
    ~identity_type ~session_policy_arn ~studio_id () :
    aws_emr_studio_session_mapping =
  {
    id;
    identity_id;
    identity_name;
    identity_type;
    session_policy_arn;
    studio_id;
  }

type t = {
  id : string prop;
  identity_id : string prop;
  identity_name : string prop;
  identity_type : string prop;
  session_policy_arn : string prop;
  studio_id : string prop;
}

let make ?id ?identity_id ?identity_name ~identity_type
    ~session_policy_arn ~studio_id __id =
  let __type = "aws_emr_studio_session_mapping" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identity_id = Prop.computed __type __id "identity_id";
       identity_name = Prop.computed __type __id "identity_name";
       identity_type = Prop.computed __type __id "identity_type";
       session_policy_arn =
         Prop.computed __type __id "session_policy_arn";
       studio_id = Prop.computed __type __id "studio_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_studio_session_mapping
        (aws_emr_studio_session_mapping ?id ?identity_id
           ?identity_name ~identity_type ~session_policy_arn
           ~studio_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?identity_id ?identity_name
    ~identity_type ~session_policy_arn ~studio_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?identity_id ?identity_name ~identity_type
      ~session_policy_arn ~studio_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
