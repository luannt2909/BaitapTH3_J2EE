/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Properties;
import static javax.servlet.SessionTrackingMode.URL;
import mybean.MyBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.support.PropertiesLoaderSupport;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nguyen Tan Luan
 */
@Service
public class MyBeanDAO extends PropertiesLoaderSupport {
    @Autowired
    Properties configProp;

    @Override
    protected void loadProperties(Properties props) throws IOException {
        super.loadProperties(props); //To change body of generated methods, choose Tools | Templates.
    }
    
    public MyBean getMyPropertiesFile(String lang) {
        MyBean myBean =new MyBean();
        //String lang = myBean.getLanguage();
        //InputStream in = this.getClass().getClassLoader().getResourceAsStream("../resources/" + lang + ".properties");
        
       
        try {
            configProp.load(this.getClass().getClassLoader().getResourceAsStream("properties/" + lang + ".properties"));
            System.out.println(lang + ".properties");
            //configProp.load(in);
            //configProp.load(new FileInputStream("properties/"+lang+".properties"));
            String mode=configProp.getProperty("mode");
            String home = configProp.getProperty("home");
            String aboutUs = configProp.getProperty("about_us");
            String productsAndServices = configProp.getProperty("products_and_services");
            String language = configProp.getProperty("language");
            String text = configProp.getProperty("this_is");
            String url=configProp.getProperty("url");
            String name = configProp.getProperty("name");
            String date = configProp.getProperty("date");
            String rate = configProp.getProperty("rate");
            String profit = configProp.getProperty("profit");
            String month = configProp.getProperty("month");
            String currency = configProp.getProperty("currency");
            String sale = configProp.getProperty("sale");
            String buy = configProp.getProperty("buy");
            String period = configProp.getProperty("period");
            
            myBean.setMode(mode);
            myBean.setHome(home);
            myBean.setAboutUs(aboutUs);
            myBean.setProductsAndServices(productsAndServices);
            myBean.setLanguage(language);
            myBean.setText(text);
            myBean.setUrl(url);
            myBean.setValid(true);
            myBean.setName(name);
            myBean.setDate(date);
            myBean.setRate(rate);
            myBean.setProfit(profit);
            myBean.setMonth(month);
            myBean.setCurrency(currency);
            myBean.setSale(sale);
            myBean.setBuy(buy);
            myBean.setPeriod(period);
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return myBean;
    }
}
