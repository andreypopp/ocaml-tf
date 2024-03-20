(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_email_identity = {
  email : string prop;  (** email *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_ses_email_identity *)

let aws_ses_email_identity ?id ~email () : aws_ses_email_identity =
  { email; id }

type t = { arn : string prop; email : string prop; id : string prop }

let make ?id ~email __id =
  let __type = "aws_ses_email_identity" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_email_identity
        (aws_ses_email_identity ?id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~email __id =
  let (r : _ Tf_core.resource) = make ?id ~email __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
