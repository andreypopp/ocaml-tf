(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type destination__amp = {
  workspace_arn : string prop;  (** workspace_arn *)
}
[@@deriving yojson_of]
(** destination__amp *)

type destination = { amp : destination__amp list }
[@@deriving yojson_of]
(** destination *)

type source__eks = {
  cluster_arn : string prop;  (** cluster_arn *)
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** source__eks *)

type source = { eks : source__eks list } [@@deriving yojson_of]
(** source *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_prometheus_scraper = {
  alias : string prop option; [@option]  (** alias *)
  scrape_configuration : string prop;  (** scrape_configuration *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  destination : destination list;
  source : source list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_prometheus_scraper *)

let destination__amp ~workspace_arn () : destination__amp =
  { workspace_arn }

let destination ~amp () : destination = { amp }

let source__eks ?security_group_ids ~cluster_arn ~subnet_ids () :
    source__eks =
  { cluster_arn; security_group_ids; subnet_ids }

let source ~eks () : source = { eks }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_prometheus_scraper ?alias ?tags ?timeouts
    ~scrape_configuration ~destination ~source () :
    aws_prometheus_scraper =
  {
    alias;
    scrape_configuration;
    tags;
    destination;
    source;
    timeouts;
  }

type t = {
  alias : string prop;
  arn : string prop;
  id : string prop;
  role_arn : string prop;
  scrape_configuration : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?alias ?tags ?timeouts ~scrape_configuration
    ~destination ~source __resource_id =
  let __resource_type = "aws_prometheus_scraper" in
  let __resource =
    aws_prometheus_scraper ?alias ?tags ?timeouts
      ~scrape_configuration ~destination ~source ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_prometheus_scraper __resource);
  let __resource_attributes =
    ({
       alias = Prop.computed __resource_type __resource_id "alias";
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       role_arn =
         Prop.computed __resource_type __resource_id "role_arn";
       scrape_configuration =
         Prop.computed __resource_type __resource_id
           "scrape_configuration";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
