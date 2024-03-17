(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_asset_folder_feed__condition = {
  description : string option; [@option]
      (** Description of the expression. This is a longer text which describes the expression,
e.g. when hovered over it in a UI. *)
  expression : string;
      (** Textual representation of an expression in Common Expression Language syntax. *)
  location : string option; [@option]
      (** String indicating the location of the expression for error reporting, e.g. a file
name and a position in the file. *)
  title : string option; [@option]
      (** Title for the expression, i.e. a short string describing its purpose.
This can be used e.g. in UIs which allow to enter the expression. *)
}
[@@deriving yojson_of]
(** A condition which determines whether an asset update should be published. If specified, an asset
will be returned only when the expression evaluates to true. When set, expression field
must be a valid CEL expression on a TemporalAsset with name temporal_asset. Example: a Feed with
expression temporal_asset.deleted == true will only publish Asset deletions. Other fields of
condition are optional. *)

type google_cloud_asset_folder_feed__feed_output_config__pubsub_destination = {
  topic : string;  (** Destination on Cloud Pubsub topic. *)
}
[@@deriving yojson_of]
(** Destination on Cloud Pubsub. *)

type google_cloud_asset_folder_feed__feed_output_config = {
  pubsub_destination :
    google_cloud_asset_folder_feed__feed_output_config__pubsub_destination
    list;
}
[@@deriving yojson_of]
(** Output configuration for asset feed destination. *)

type google_cloud_asset_folder_feed__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_asset_folder_feed__timeouts *)

type google_cloud_asset_folder_feed = {
  asset_names : string list option; [@option]
      (** A list of the full names of the assets to receive updates. You must specify either or both of
assetNames and assetTypes. Only asset updates matching specified assetNames and assetTypes are
exported to the feed. For example: //compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1.
See https://cloud.google.com/apis/design/resourceNames#fullResourceName for more info. *)
  asset_types : string list option; [@option]
      (** A list of types of the assets to receive updates. You must specify either or both of assetNames
and assetTypes. Only asset updates matching specified assetNames and assetTypes are exported to
the feed. For example: compute.googleapis.com/Disk
See https://cloud.google.com/asset-inventory/docs/supported-asset-types for a list of all
supported asset types. *)
  billing_project : string;
      (** The project whose identity will be used when sending messages to the
destination pubsub topic. It also specifies the project for API
enablement check, quota, and billing. *)
  content_type : string option; [@option]
      (** Asset content type. If not specified, no content but the asset name and type will be returned. Possible values: [CONTENT_TYPE_UNSPECIFIED, RESOURCE, IAM_POLICY, ORG_POLICY, OS_INVENTORY, ACCESS_POLICY] *)
  feed_id : string;
      (** This is the client-assigned asset feed identifier and it needs to be unique under a specific parent. *)
  folder : string;  (** The folder this feed should be created in. *)
  id : string option; [@option]  (** id *)
  condition : google_cloud_asset_folder_feed__condition list;
  feed_output_config :
    google_cloud_asset_folder_feed__feed_output_config list;
  timeouts : google_cloud_asset_folder_feed__timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_asset_folder_feed *)

let google_cloud_asset_folder_feed ?asset_names ?asset_types
    ?content_type ?id ?timeouts ~billing_project ~feed_id ~folder
    ~condition ~feed_output_config __resource_id =
  let __resource_type = "google_cloud_asset_folder_feed" in
  let __resource =
    {
      asset_names;
      asset_types;
      billing_project;
      content_type;
      feed_id;
      folder;
      id;
      condition;
      feed_output_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_asset_folder_feed __resource);
  ()
