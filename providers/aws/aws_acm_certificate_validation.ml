(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_acm_certificate_validation = {
  certificate_arn : string prop;  (** certificate_arn *)
  id : string prop option; [@option]  (** id *)
  validation_record_fqdns : string prop list option; [@option]
      (** validation_record_fqdns *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_acm_certificate_validation *)

let timeouts ?create () : timeouts = { create }

let aws_acm_certificate_validation ?id ?validation_record_fqdns
    ?timeouts ~certificate_arn () : aws_acm_certificate_validation =
  { certificate_arn; id; validation_record_fqdns; timeouts }

type t = {
  certificate_arn : string prop;
  id : string prop;
  validation_record_fqdns : string list prop;
}

let make ?id ?validation_record_fqdns ?timeouts ~certificate_arn __id
    =
  let __type = "aws_acm_certificate_validation" in
  let __attrs =
    ({
       certificate_arn = Prop.computed __type __id "certificate_arn";
       id = Prop.computed __type __id "id";
       validation_record_fqdns =
         Prop.computed __type __id "validation_record_fqdns";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_acm_certificate_validation
        (aws_acm_certificate_validation ?id ?validation_record_fqdns
           ?timeouts ~certificate_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?validation_record_fqdns ?timeouts
    ~certificate_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ?validation_record_fqdns ?timeouts ~certificate_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
