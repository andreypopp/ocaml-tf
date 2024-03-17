(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_prometheus_scraper__destination__amp = {
  workspace_arn : string;  (** workspace_arn *)
}
[@@deriving yojson_of]
(** aws_prometheus_scraper__destination__amp *)

type aws_prometheus_scraper__destination = {
  amp : aws_prometheus_scraper__destination__amp list;
}
[@@deriving yojson_of]
(** aws_prometheus_scraper__destination *)

type aws_prometheus_scraper__source__eks = {
  cluster_arn : string;  (** cluster_arn *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
}
[@@deriving yojson_of]
(** aws_prometheus_scraper__source__eks *)

type aws_prometheus_scraper__source = {
  eks : aws_prometheus_scraper__source__eks list;
}
[@@deriving yojson_of]
(** aws_prometheus_scraper__source *)

type aws_prometheus_scraper__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_prometheus_scraper__timeouts *)

type aws_prometheus_scraper = {
  alias : string option; [@option]  (** alias *)
  scrape_configuration : string;  (** scrape_configuration *)
  tags : (string * string) list option; [@option]  (** tags *)
  destination : aws_prometheus_scraper__destination list;
  source : aws_prometheus_scraper__source list;
  timeouts : aws_prometheus_scraper__timeouts option;
}
[@@deriving yojson_of]
(** aws_prometheus_scraper *)

let aws_prometheus_scraper ?alias ?tags ?timeouts
    ~scrape_configuration ~destination ~source __resource_id =
  let __resource_type = "aws_prometheus_scraper" in
  let __resource =
    {
      alias;
      scrape_configuration;
      tags;
      destination;
      source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_prometheus_scraper __resource);
  ()
