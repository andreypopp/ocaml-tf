(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type restore_config__cluster_resource_restore_scope__excluded_group_kinds = {
  resource_group : string prop option; [@option]
      (** API Group string of a Kubernetes resource, e.g.
apiextensions.k8s.io, storage.k8s.io, etc.
Use empty string for core group. *)
  resource_kind : string prop option; [@option]
      (** Kind of a Kubernetes resource, e.g.
CustomResourceDefinition, StorageClass, etc. *)
}
[@@deriving yojson_of]
(** A list of cluster-scoped resource group kinds to NOT restore from the backup.
If specified, all valid cluster-scoped resources will be restored except
for those specified in the list.
Mutually exclusive to any other field in 'clusterResourceRestoreScope'. *)

type restore_config__cluster_resource_restore_scope__selected_group_kinds = {
  resource_group : string prop option; [@option]
      (** API Group string of a Kubernetes resource, e.g.
apiextensions.k8s.io, storage.k8s.io, etc.
Use empty string for core group. *)
  resource_kind : string prop option; [@option]
      (** Kind of a Kubernetes resource, e.g.
CustomResourceDefinition, StorageClass, etc. *)
}
[@@deriving yojson_of]
(** A list of cluster-scoped resource group kinds to restore from the backup.
If specified, only the selected resources will be restored.
Mutually exclusive to any other field in the 'clusterResourceRestoreScope'. *)

type restore_config__cluster_resource_restore_scope = {
  all_group_kinds : bool prop option; [@option]
      (** If True, all valid cluster-scoped resources will be restored.
Mutually exclusive to any other field in 'clusterResourceRestoreScope'. *)
  no_group_kinds : bool prop option; [@option]
      (** If True, no cluster-scoped resources will be restored.
Mutually exclusive to any other field in 'clusterResourceRestoreScope'. *)
  excluded_group_kinds :
    restore_config__cluster_resource_restore_scope__excluded_group_kinds
    list;
  selected_group_kinds :
    restore_config__cluster_resource_restore_scope__selected_group_kinds
    list;
}
[@@deriving yojson_of]
(** Identifies the cluster-scoped resources to restore from the Backup. *)

type restore_config__excluded_namespaces = {
  namespaces : string prop list;
      (** A list of Kubernetes Namespaces. *)
}
[@@deriving yojson_of]
(** A list of selected namespaces excluded from restoration.
All namespaces except those in this list will be restored. *)

type restore_config__selected_applications__namespaced_names = {
  name : string prop;  (** The name of a Kubernetes Resource. *)
  namespace : string prop;
      (** The namespace of a Kubernetes Resource. *)
}
[@@deriving yojson_of]
(** A list of namespaced Kubernetes resources. *)

type restore_config__selected_applications = {
  namespaced_names :
    restore_config__selected_applications__namespaced_names list;
}
[@@deriving yojson_of]
(** A list of selected ProtectedApplications to restore.
The listed ProtectedApplications and all the resources
to which they refer will be restored. *)

type restore_config__selected_namespaces = {
  namespaces : string prop list;
      (** A list of Kubernetes Namespaces. *)
}
[@@deriving yojson_of]
(** A list of selected namespaces to restore from the Backup.
The listed Namespaces and all resources contained in them will be restored. *)

type restore_config__transformation_rules__field_actions = {
  from_path : string prop option; [@option]
      (** A string containing a JSON Pointer value that references the
location in the target document to move the value from. *)
  op : string prop;
      (** Specifies the operation to perform. Possible values: [REMOVE, MOVE, COPY, ADD, TEST, REPLACE] *)
  path : string prop option; [@option]
      (** A string containing a JSON-Pointer value that references a
location within the target document where the operation is performed. *)
  value : string prop option; [@option]
      (** A string that specifies the desired value in string format
to use for transformation. *)
}
[@@deriving yojson_of]
(** A list of transformation rule actions to take against candidate
resources. Actions are executed in order defined - this order
matters, as they could potentially interfere with each other and
the first operation could affect the outcome of the second operation. *)

type restore_config__transformation_rules__resource_filter__group_kinds = {
  resource_group : string prop option; [@option]
      (** API Group string of a Kubernetes resource, e.g.
apiextensions.k8s.io, storage.k8s.io, etc.
Use empty string for core group. *)
  resource_kind : string prop option; [@option]
      (** Kind of a Kubernetes resource, e.g.
CustomResourceDefinition, StorageClass, etc. *)
}
[@@deriving yojson_of]
(** (Filtering parameter) Any resource subject to transformation must
belong to one of the listed types. If this field is not provided,
no type filtering will be performed
(all resources of all types matching previous filtering parameters
will be candidates for transformation). *)

type restore_config__transformation_rules__resource_filter = {
  json_path : string prop option; [@option]
      (** This is a JSONPath expression that matches specific fields of
candidate resources and it operates as a filtering parameter
(resources that are not matched with this expression will not
be candidates for transformation). *)
  namespaces : string prop list option; [@option]
      (** (Filtering parameter) Any resource subject to transformation must
be contained within one of the listed Kubernetes Namespace in the
Backup. If this field is not provided, no namespace filtering will
be performed (all resources in all Namespaces, including all
cluster-scoped resources, will be candidates for transformation).
To mix cluster-scoped and namespaced resources in the same rule,
use an empty string () as one of the target namespaces. *)
  group_kinds :
    restore_config__transformation_rules__resource_filter__group_kinds
    list;
}
[@@deriving yojson_of]
(** This field is used to specify a set of fields that should be used to
determine which resources in backup should be acted upon by the
supplied transformation rule actions, and this will ensure that only
specific resources are affected by transformation rule actions. *)

type restore_config__transformation_rules = {
  description : string prop option; [@option]
      (** The description is a user specified string description
of the transformation rule. *)
  field_actions :
    restore_config__transformation_rules__field_actions list;
  resource_filter :
    restore_config__transformation_rules__resource_filter list;
}
[@@deriving yojson_of]
(** A list of transformation rules to be applied against Kubernetes
resources as they are selected for restoration from a Backup.
Rules are executed in order defined - this order matters,
as changes made by a rule may impact the filtering logic of subsequent
rules. An empty list means no transformation will occur. *)

type restore_config = {
  all_namespaces : bool prop option; [@option]
      (** If True, restore all namespaced resources in the Backup.
Setting this field to False will result in an error. *)
  cluster_resource_conflict_policy : string prop option; [@option]
      (** Defines the behavior for handling the situation where cluster-scoped resources
being restored already exist in the target cluster.
This MUST be set to a value other than 'CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED'
if 'clusterResourceRestoreScope' is anyting other than 'noGroupKinds'.
See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#clusterresourceconflictpolicy
for more information on each policy option. Possible values: [USE_EXISTING_VERSION, USE_BACKUP_VERSION] *)
  namespaced_resource_restore_mode : string prop option; [@option]
      (** Defines the behavior for handling the situation where sets of namespaced resources
being restored already exist in the target cluster.
This MUST be set to a value other than 'NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED'
if the 'namespacedResourceRestoreScope' is anything other than 'noNamespaces'.
See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#namespacedresourcerestoremode
for more information on each mode. Possible values: [DELETE_AND_RESTORE, FAIL_ON_CONFLICT] *)
  no_namespaces : bool prop option; [@option]
      (** Do not restore any namespaced resources if set to True.
Specifying this field to False is not allowed. *)
  volume_data_restore_policy : string prop option; [@option]
      (** Specifies the mechanism to be used to restore volume data.
This should be set to a value other than 'NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED'
if the 'namespacedResourceRestoreScope' is anything other than 'noNamespaces'.
If not specified, it will be treated as 'NO_VOLUME_DATA_RESTORATION'.
See https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy
for more information on each policy option. Possible values: [RESTORE_VOLUME_DATA_FROM_BACKUP, REUSE_VOLUME_HANDLE_FROM_BACKUP, NO_VOLUME_DATA_RESTORATION] *)
  cluster_resource_restore_scope :
    restore_config__cluster_resource_restore_scope list;
  excluded_namespaces : restore_config__excluded_namespaces list;
  selected_applications : restore_config__selected_applications list;
  selected_namespaces : restore_config__selected_namespaces list;
  transformation_rules : restore_config__transformation_rules list;
}
[@@deriving yojson_of]
(** Defines the configuration of Restores created via this RestorePlan. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_gke_backup_restore_plan = {
  backup_plan : string prop;
      (** A reference to the BackupPlan from which Backups may be used
as the source for Restores created via this RestorePlan. *)
  cluster : string prop;
      (** The source cluster from which Restores will be created via this RestorePlan. *)
  description : string prop option; [@option]
      (** User specified descriptive string for this RestorePlan. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Description: A set of custom labels supplied by the user.
A list of key->value pairs.
Example: { name: wrench, mass: 1.3kg, count: 3 }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The region of the Restore Plan. *)
  name : string prop;
      (** The full name of the BackupPlan Resource. *)
  project : string prop option; [@option]  (** project *)
  restore_config : restore_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_gke_backup_restore_plan *)

let restore_config__cluster_resource_restore_scope__excluded_group_kinds
    ?resource_group ?resource_kind () :
    restore_config__cluster_resource_restore_scope__excluded_group_kinds
    =
  { resource_group; resource_kind }

let restore_config__cluster_resource_restore_scope__selected_group_kinds
    ?resource_group ?resource_kind () :
    restore_config__cluster_resource_restore_scope__selected_group_kinds
    =
  { resource_group; resource_kind }

let restore_config__cluster_resource_restore_scope ?all_group_kinds
    ?no_group_kinds ~excluded_group_kinds ~selected_group_kinds () :
    restore_config__cluster_resource_restore_scope =
  {
    all_group_kinds;
    no_group_kinds;
    excluded_group_kinds;
    selected_group_kinds;
  }

let restore_config__excluded_namespaces ~namespaces () :
    restore_config__excluded_namespaces =
  { namespaces }

let restore_config__selected_applications__namespaced_names ~name
    ~namespace () :
    restore_config__selected_applications__namespaced_names =
  { name; namespace }

let restore_config__selected_applications ~namespaced_names () :
    restore_config__selected_applications =
  { namespaced_names }

let restore_config__selected_namespaces ~namespaces () :
    restore_config__selected_namespaces =
  { namespaces }

let restore_config__transformation_rules__field_actions ?from_path
    ?path ?value ~op () :
    restore_config__transformation_rules__field_actions =
  { from_path; op; path; value }

let restore_config__transformation_rules__resource_filter__group_kinds
    ?resource_group ?resource_kind () :
    restore_config__transformation_rules__resource_filter__group_kinds
    =
  { resource_group; resource_kind }

let restore_config__transformation_rules__resource_filter ?json_path
    ?namespaces ~group_kinds () :
    restore_config__transformation_rules__resource_filter =
  { json_path; namespaces; group_kinds }

let restore_config__transformation_rules ?description ~field_actions
    ~resource_filter () : restore_config__transformation_rules =
  { description; field_actions; resource_filter }

let restore_config ?all_namespaces ?cluster_resource_conflict_policy
    ?namespaced_resource_restore_mode ?no_namespaces
    ?volume_data_restore_policy ~cluster_resource_restore_scope
    ~excluded_namespaces ~selected_applications ~selected_namespaces
    ~transformation_rules () : restore_config =
  {
    all_namespaces;
    cluster_resource_conflict_policy;
    namespaced_resource_restore_mode;
    no_namespaces;
    volume_data_restore_policy;
    cluster_resource_restore_scope;
    excluded_namespaces;
    selected_applications;
    selected_namespaces;
    transformation_rules;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_gke_backup_restore_plan ?description ?id ?labels ?project
    ?timeouts ~backup_plan ~cluster ~location ~name ~restore_config
    () : google_gke_backup_restore_plan =
  {
    backup_plan;
    cluster;
    description;
    id;
    labels;
    location;
    name;
    project;
    restore_config;
    timeouts;
  }

type t = {
  backup_plan : string prop;
  cluster : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  state : string prop;
  state_reason : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
}

let make ?description ?id ?labels ?project ?timeouts ~backup_plan
    ~cluster ~location ~name ~restore_config __id =
  let __type = "google_gke_backup_restore_plan" in
  let __attrs =
    ({
       backup_plan = Prop.computed __type __id "backup_plan";
       cluster = Prop.computed __type __id "cluster";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       state = Prop.computed __type __id "state";
       state_reason = Prop.computed __type __id "state_reason";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_gke_backup_restore_plan
        (google_gke_backup_restore_plan ?description ?id ?labels
           ?project ?timeouts ~backup_plan ~cluster ~location ~name
           ~restore_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~backup_plan ~cluster ~location ~name ~restore_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?timeouts ~backup_plan
      ~cluster ~location ~name ~restore_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
