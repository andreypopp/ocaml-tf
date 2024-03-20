(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_verifiedaccess_instance_trust_provider_attachment = {
  id : string prop option; [@option]  (** id *)
  verifiedaccess_instance_id : string prop;
      (** verifiedaccess_instance_id *)
  verifiedaccess_trust_provider_id : string prop;
      (** verifiedaccess_trust_provider_id *)
}
[@@deriving yojson_of]
(** aws_verifiedaccess_instance_trust_provider_attachment *)

let aws_verifiedaccess_instance_trust_provider_attachment ?id
    ~verifiedaccess_instance_id ~verifiedaccess_trust_provider_id ()
    : aws_verifiedaccess_instance_trust_provider_attachment =
  {
    id;
    verifiedaccess_instance_id;
    verifiedaccess_trust_provider_id;
  }

type t = {
  id : string prop;
  verifiedaccess_instance_id : string prop;
  verifiedaccess_trust_provider_id : string prop;
}

let make ?id ~verifiedaccess_instance_id
    ~verifiedaccess_trust_provider_id __id =
  let __type =
    "aws_verifiedaccess_instance_trust_provider_attachment"
  in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       verifiedaccess_instance_id =
         Prop.computed __type __id "verifiedaccess_instance_id";
       verifiedaccess_trust_provider_id =
         Prop.computed __type __id "verifiedaccess_trust_provider_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedaccess_instance_trust_provider_attachment
        (aws_verifiedaccess_instance_trust_provider_attachment ?id
           ~verifiedaccess_instance_id
           ~verifiedaccess_trust_provider_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~verifiedaccess_instance_id
    ~verifiedaccess_trust_provider_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~verifiedaccess_instance_id
      ~verifiedaccess_trust_provider_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
