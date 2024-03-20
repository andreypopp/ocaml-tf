(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshift_authentication_profile = {
  authentication_profile_content : string prop;
      (** authentication_profile_content *)
  authentication_profile_name : string prop;
      (** authentication_profile_name *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_redshift_authentication_profile *)

let aws_redshift_authentication_profile ?id
    ~authentication_profile_content ~authentication_profile_name () :
    aws_redshift_authentication_profile =
  { authentication_profile_content; authentication_profile_name; id }

type t = {
  authentication_profile_content : string prop;
  authentication_profile_name : string prop;
  id : string prop;
}

let make ?id ~authentication_profile_content
    ~authentication_profile_name __id =
  let __type = "aws_redshift_authentication_profile" in
  let __attrs =
    ({
       authentication_profile_content =
         Prop.computed __type __id "authentication_profile_content";
       authentication_profile_name =
         Prop.computed __type __id "authentication_profile_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshift_authentication_profile
        (aws_redshift_authentication_profile ?id
           ~authentication_profile_content
           ~authentication_profile_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~authentication_profile_content
    ~authentication_profile_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~authentication_profile_content
      ~authentication_profile_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
