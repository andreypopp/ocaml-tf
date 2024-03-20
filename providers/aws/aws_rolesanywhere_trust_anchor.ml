(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type source__source_data = {
  acm_pca_arn : string prop option; [@option]  (** acm_pca_arn *)
  x509_certificate_data : string prop option; [@option]
      (** x509_certificate_data *)
}
[@@deriving yojson_of]
(** source__source_data *)

type source = {
  source_type : string prop;  (** source_type *)
  source_data : source__source_data list;
}
[@@deriving yojson_of]
(** source *)

type aws_rolesanywhere_trust_anchor = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  source : source list;
}
[@@deriving yojson_of]
(** aws_rolesanywhere_trust_anchor *)

let source__source_data ?acm_pca_arn ?x509_certificate_data () :
    source__source_data =
  { acm_pca_arn; x509_certificate_data }

let source ~source_type ~source_data () : source =
  { source_type; source_data }

let aws_rolesanywhere_trust_anchor ?enabled ?id ?tags ?tags_all ~name
    ~source () : aws_rolesanywhere_trust_anchor =
  { enabled; id; name; tags; tags_all; source }

type t = {
  arn : string prop;
  enabled : bool prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?enabled ?id ?tags ?tags_all ~name ~source __id =
  let __type = "aws_rolesanywhere_trust_anchor" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       enabled = Prop.computed __type __id "enabled";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rolesanywhere_trust_anchor
        (aws_rolesanywhere_trust_anchor ?enabled ?id ?tags ?tags_all
           ~name ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?id ?tags ?tags_all ~name ~source
    __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?id ?tags ?tags_all ~name ~source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
