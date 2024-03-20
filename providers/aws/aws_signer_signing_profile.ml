(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type signature_validity_period = {
  type_ : string prop; [@key "type"]  (** type *)
  value : float prop;  (** value *)
}
[@@deriving yojson_of]
(** signature_validity_period *)

type signing_material = {
  certificate_arn : string prop;  (** certificate_arn *)
}
[@@deriving yojson_of]
(** signing_material *)

type revocation_record = {
  revocation_effective_from : string prop;
      (** revocation_effective_from *)
  revoked_at : string prop;  (** revoked_at *)
  revoked_by : string prop;  (** revoked_by *)
}
[@@deriving yojson_of]

type aws_signer_signing_profile = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  platform_id : string prop;  (** platform_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  signature_validity_period : signature_validity_period list;
  signing_material : signing_material list;
}
[@@deriving yojson_of]
(** aws_signer_signing_profile *)

let signature_validity_period ~type_ ~value () :
    signature_validity_period =
  { type_; value }

let signing_material ~certificate_arn () : signing_material =
  { certificate_arn }

let aws_signer_signing_profile ?id ?name ?name_prefix ?tags ?tags_all
    ~platform_id ~signature_validity_period ~signing_material () :
    aws_signer_signing_profile =
  {
    id;
    name;
    name_prefix;
    platform_id;
    tags;
    tags_all;
    signature_validity_period;
    signing_material;
  }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  platform_display_name : string prop;
  platform_id : string prop;
  revocation_record : revocation_record list prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
  version_arn : string prop;
}

let make ?id ?name ?name_prefix ?tags ?tags_all ~platform_id
    ~signature_validity_period ~signing_material __id =
  let __type = "aws_signer_signing_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       platform_display_name =
         Prop.computed __type __id "platform_display_name";
       platform_id = Prop.computed __type __id "platform_id";
       revocation_record =
         Prop.computed __type __id "revocation_record";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version = Prop.computed __type __id "version";
       version_arn = Prop.computed __type __id "version_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_signer_signing_profile
        (aws_signer_signing_profile ?id ?name ?name_prefix ?tags
           ?tags_all ~platform_id ~signature_validity_period
           ~signing_material ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?tags ?tags_all
    ~platform_id ~signature_validity_period ~signing_material __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?tags ?tags_all ~platform_id
      ~signature_validity_period ~signing_material __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
