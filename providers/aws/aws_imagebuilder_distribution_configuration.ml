(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type distribution__ami_distribution_configuration__launch_permission = {
  organization_arns : string prop list option; [@option]
      (** organization_arns *)
  organizational_unit_arns : string prop list option; [@option]
      (** organizational_unit_arns *)
  user_groups : string prop list option; [@option]
      (** user_groups *)
  user_ids : string prop list option; [@option]  (** user_ids *)
}
[@@deriving yojson_of]
(** distribution__ami_distribution_configuration__launch_permission *)

type distribution__ami_distribution_configuration = {
  ami_tags : (string * string prop) list option; [@option]
      (** ami_tags *)
  description : string prop option; [@option]  (** description *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop option; [@option]  (** name *)
  target_account_ids : string prop list option; [@option]
      (** target_account_ids *)
  launch_permission :
    distribution__ami_distribution_configuration__launch_permission
    list;
}
[@@deriving yojson_of]
(** distribution__ami_distribution_configuration *)

type distribution__container_distribution_configuration__target_repository = {
  repository_name : string prop;  (** repository_name *)
  service : string prop;  (** service *)
}
[@@deriving yojson_of]
(** distribution__container_distribution_configuration__target_repository *)

type distribution__container_distribution_configuration = {
  container_tags : string prop list option; [@option]
      (** container_tags *)
  description : string prop option; [@option]  (** description *)
  target_repository :
    distribution__container_distribution_configuration__target_repository
    list;
}
[@@deriving yojson_of]
(** distribution__container_distribution_configuration *)

type distribution__fast_launch_configuration__launch_template = {
  launch_template_id : string prop option; [@option]
      (** launch_template_id *)
  launch_template_name : string prop option; [@option]
      (** launch_template_name *)
  launch_template_version : string prop option; [@option]
      (** launch_template_version *)
}
[@@deriving yojson_of]
(** distribution__fast_launch_configuration__launch_template *)

type distribution__fast_launch_configuration__snapshot_configuration = {
  target_resource_count : float prop option; [@option]
      (** target_resource_count *)
}
[@@deriving yojson_of]
(** distribution__fast_launch_configuration__snapshot_configuration *)

type distribution__fast_launch_configuration = {
  account_id : string prop;  (** account_id *)
  enabled : bool prop;  (** enabled *)
  max_parallel_launches : float prop option; [@option]
      (** max_parallel_launches *)
  launch_template :
    distribution__fast_launch_configuration__launch_template list;
  snapshot_configuration :
    distribution__fast_launch_configuration__snapshot_configuration
    list;
}
[@@deriving yojson_of]
(** distribution__fast_launch_configuration *)

type distribution__launch_template_configuration = {
  account_id : string prop option; [@option]  (** account_id *)
  default : bool prop option; [@option]  (** default *)
  launch_template_id : string prop;  (** launch_template_id *)
}
[@@deriving yojson_of]
(** distribution__launch_template_configuration *)

type distribution = {
  license_configuration_arns : string prop list option; [@option]
      (** license_configuration_arns *)
  region : string prop;  (** region *)
  ami_distribution_configuration :
    distribution__ami_distribution_configuration list;
  container_distribution_configuration :
    distribution__container_distribution_configuration list;
  fast_launch_configuration :
    distribution__fast_launch_configuration list;
  launch_template_configuration :
    distribution__launch_template_configuration list;
}
[@@deriving yojson_of]
(** distribution *)

type aws_imagebuilder_distribution_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  distribution : distribution list;
}
[@@deriving yojson_of]
(** aws_imagebuilder_distribution_configuration *)

let distribution__ami_distribution_configuration__launch_permission
    ?organization_arns ?organizational_unit_arns ?user_groups
    ?user_ids () :
    distribution__ami_distribution_configuration__launch_permission =
  {
    organization_arns;
    organizational_unit_arns;
    user_groups;
    user_ids;
  }

let distribution__ami_distribution_configuration ?ami_tags
    ?description ?kms_key_id ?name ?target_account_ids
    ~launch_permission () :
    distribution__ami_distribution_configuration =
  {
    ami_tags;
    description;
    kms_key_id;
    name;
    target_account_ids;
    launch_permission;
  }

let distribution__container_distribution_configuration__target_repository
    ~repository_name ~service () :
    distribution__container_distribution_configuration__target_repository
    =
  { repository_name; service }

let distribution__container_distribution_configuration
    ?container_tags ?description ~target_repository () :
    distribution__container_distribution_configuration =
  { container_tags; description; target_repository }

let distribution__fast_launch_configuration__launch_template
    ?launch_template_id ?launch_template_name
    ?launch_template_version () :
    distribution__fast_launch_configuration__launch_template =
  {
    launch_template_id;
    launch_template_name;
    launch_template_version;
  }

let distribution__fast_launch_configuration__snapshot_configuration
    ?target_resource_count () :
    distribution__fast_launch_configuration__snapshot_configuration =
  { target_resource_count }

let distribution__fast_launch_configuration ?max_parallel_launches
    ~account_id ~enabled ~launch_template ~snapshot_configuration ()
    : distribution__fast_launch_configuration =
  {
    account_id;
    enabled;
    max_parallel_launches;
    launch_template;
    snapshot_configuration;
  }

let distribution__launch_template_configuration ?account_id ?default
    ~launch_template_id () :
    distribution__launch_template_configuration =
  { account_id; default; launch_template_id }

let distribution ?license_configuration_arns ~region
    ~ami_distribution_configuration
    ~container_distribution_configuration ~fast_launch_configuration
    ~launch_template_configuration () : distribution =
  {
    license_configuration_arns;
    region;
    ami_distribution_configuration;
    container_distribution_configuration;
    fast_launch_configuration;
    launch_template_configuration;
  }

let aws_imagebuilder_distribution_configuration ?description ?id
    ?tags ?tags_all ~name ~distribution () :
    aws_imagebuilder_distribution_configuration =
  { description; id; name; tags; tags_all; distribution }

type t = {
  arn : string prop;
  date_created : string prop;
  date_updated : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~distribution __id =
  let __type = "aws_imagebuilder_distribution_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       date_created = Prop.computed __type __id "date_created";
       date_updated = Prop.computed __type __id "date_updated";
       description = Prop.computed __type __id "description";
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
      yojson_of_aws_imagebuilder_distribution_configuration
        (aws_imagebuilder_distribution_configuration ?description ?id
           ?tags ?tags_all ~name ~distribution ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~distribution __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~distribution __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
