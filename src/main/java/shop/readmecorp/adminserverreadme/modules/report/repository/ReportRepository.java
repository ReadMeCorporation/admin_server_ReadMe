package shop.readmecorp.adminserverreadme.modules.report.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import shop.readmecorp.adminserverreadme.modules.report.entity.Report;

public interface ReportRepository extends JpaRepository<Report, Integer> {
}
