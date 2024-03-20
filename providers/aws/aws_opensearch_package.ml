(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type package_source = {
  s3_bucket_name : string prop;  (** s3_bucket_name *)
  s3_key : string prop;  (** s3_key *)
}
[@@deriving yojson_of]
(** package_source *)

type aws_opensearch_package = {
  id : string prop option; [@option]  (** id *)
  package_description : string prop option; [@option]
      (** package_description *)
  package_name : string prop;  (** package_name *)
  package_type : string prop;  (** package_type *)
  package_source : package_source list;
}
[@@deriving yojson_of]
(** aws_opensearch_package *)

let package_source ~s3_bucket_name ~s3_key () : package_source =
  { s3_bucket_name; s3_key }

let aws_opensearch_package ?id ?package_description ~package_name
    ~package_type ~package_source () : aws_opensearch_package =
  {
    id;
    package_description;
    package_name;
    package_type;
    package_source;
  }

type t = {
  available_package_version : string prop;
  id : string prop;
  package_description : string prop;
  package_id : string prop;
  package_name : string prop;
  package_type : string prop;
}

let make ?id ?package_description ~package_name ~package_type
    ~package_source __id =
  let __type = "aws_opensearch_package" in
  let __attrs =
    ({
       available_package_version =
         Prop.computed __type __id "available_package_version";
       id = Prop.computed __type __id "id";
       package_description =
         Prop.computed __type __id "package_description";
       package_id = Prop.computed __type __id "package_id";
       package_name = Prop.computed __type __id "package_name";
       package_type = Prop.computed __type __id "package_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_package
        (aws_opensearch_package ?id ?package_description
           ~package_name ~package_type ~package_source ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?package_description ~package_name
    ~package_type ~package_source __id =
  let (r : _ Tf_core.resource) =
    make ?id ?package_description ~package_name ~package_type
      ~package_source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
